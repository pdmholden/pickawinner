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
    let(:service) { ExtractWinner.new }
    let(:subject) { service.process_input(string) }

    context 'strings are valid' do
      describe 'and all picks are less than 10' do
        let(:string) { "1234567" }

        it 'returns the 7 picks' do
        end
      end

      describe 'and picks are single & two-digit numers' do
        let(:string) { "4938532894754" }

        it 'returns the 7 picks' do
        end
      end
    end

    context 'strings are invalid' do
      describe 'when there are too many possible numbers' do
        let(:string) { "472844278465445" }

        it 'returns nil' do
          expect(subject).to be_nil
        end
      end

      describe 'when there are duplicate numbers' do
        let(:string) { "569815571556" }

        it 'returns nil' do
          expect(subject).to be_nil
        end
      end
    end
  end
end
