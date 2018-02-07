require 'extract_winner'

describe 'ExtractWinner' do
  describe '#print_picks' do
  end

  describe '#pick' do
    let(:service) do
      ExtractWinner.new(["569815571556",
        "4938532894754",
        "1234567",
        "472844278465445"])
    end

    it 'returns array of same length' do
      result = service.pick
      expect(result.length).to eq 4
    end
  end

  describe '#process_input' do
    describe 'inputs provided' do
    end
  end
end
