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
    return nil if item.length < 7
    return nil if item.length > 14
    return nil unless (item =~ /[[:alpha:]]/).nil?

    possibilities = Array.new(7)
    nil
  end

end
