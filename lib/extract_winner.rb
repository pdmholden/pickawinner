class ExtractWinner

  MIN_PICK = 1
  MAX_PICK = 59

  def initialize(strings = [])
    @inputs = strings
    @outputs = []
  end

  def print_picks
  end

  def pick
    @inputs.each do |str|
      @outputs << process_input(str)
    end

    @outputs
  end

  def process_input(item)
    # short-circuit on cases that can't possibly work
    return "" if item.length < 7
    return "" if item.length > 14
    return "" unless (item =~ /[[:alpha:]]/).nil?

    possibilities = [] # Array.new(7)
    two_digit_picks = 0
    failed = false
    digits = item.chars.map { |x| x.to_i }

    while(!failed && digits.length > 0) do
      if try_two_digit_pick?(two_digit_picks, item.length)
        number = digits.first(2).join.to_i
        if validate_two_digit_pick(number, possibilities)
          digits.shift(2)
          possibilities << number
          two_digit_picks += 1
        end
      end
      number = digits.shift
      if validate_one_digit_pick(number, possibilities)
        possibilities << number
      else
        failed = true
      end
    end

    result = if validate_result(possibilities) && !failed
      possibilities.join(" ")
    else
      ""
    end
  end

  def try_two_digit_pick?(two_digit_pick_count, input_length)
    two_digit_pick_count < input_length - 7
  end

  def validate_result(possibilities)
    possibilities.length == 7
  end

  def validate_two_digit_pick(number, possibilities)
    return false unless number
    return false if number > MAX_PICK
    return false if possibilities.include?(number)
    true
  end

  def validate_one_digit_pick(number, possibilities)
    return false unless number
    return false if number < MIN_PICK
    return false if possibilities.include?(number)
    true
  end

end
