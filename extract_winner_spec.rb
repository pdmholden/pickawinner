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
          expect(subject).to eq "1 2 3 4 5 6 7"
        end
      end

      describe 'and picks are single & two-digit numers' do
        let(:string) { "4938532894754" }

        it 'returns the 7 picks' do
          expect(subject).to eq "49 38 53 28 9 47 54"
        end
      end

      describe 'another test' do
        let(:string) { "34624928313" }

        it 'returns the 7 picks' do
          expect(subject).to eq "34 6 24 9 28 31 3"
        end
      end

      describe 'and some possible two-digit picks are over the limit' do
        let(:string) { "9876543210" }

        it 'returns the 7 picks' do
          expect(subject).to eq "9 8 7 6 54 32 10"
        end
      end
    end

    context 'strings are invalid' do
      describe 'when there are too many possible numbers' do
        let(:string) { "472844278465445" }

        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

      describe 'when there are not enough characters' do
        let(:string) { '123' }

        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

      describe 'when there are duplicate numbers' do
        let(:string) { "569815571556" }

        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

      describe 'when there are duplicate singles' do
        let(:string) { "34624928893" }

        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

      describe 'when there are not enough two-digit picks' do
        let(:string) { "98769876" }

        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

      describe 'when there is a leading 0' do
        let(:string) { "0123456" }

        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

      describe 'when letters are included' do
        let(:string) { "765432a" }
        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

      describe 'when 0 interferes with two-digit picks' do
        let(:string) { "110234567" }

        it 'returns nil' do
          expect(subject).to eq ""
        end
      end

    end
  end
end
