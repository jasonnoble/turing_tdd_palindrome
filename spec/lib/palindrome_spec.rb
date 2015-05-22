require './lib/palindrome'

describe Palindrome do
  describe '#palindrome?(string)' do
    it 'returns true for an empty string' do
      expect(Palindrome.palindrome?('')).to eq(true)
    end

    it 'returns true for a single character string' do
      expect(Palindrome.palindrome?('a')).to eq(true)
    end

    describe 'for two character strings' do
      context 'where the two characters match' do
        it 'returns true' do
          expect(Palindrome.palindrome?('aa')).to eq(true)
        end
      end
      context 'where the two characters do not match' do
        it 'returns false' do
          expect(Palindrome.palindrome?('ac')).to eq(false)
        end
      end
    end

    describe 'for three character strings' do
      context 'when the first and last letter match' do
        it 'returns true' do
          expect(Palindrome.palindrome?('aba')).to eq(true)
        end
      end
      context 'when the first and last letter do not match' do
        it 'returns false' do
          expect(Palindrome.palindrome?('ac')).to eq(false)
        end
      end
    end
    describe 'for four character strings' do
      context 'when the first and last letter match' do
        context 'when the inner first and last letter match' do
          it 'returns true' do
            expect(Palindrome.palindrome?('abba')).to eq(true)
          end
        end
        context 'when the inner first and last letter no not match' do
          it 'returns false' do
            expect(Palindrome.palindrome?('abca')).to eq(false)
          end
        end
        context 'when the first and last letter do not match' do
          it 'returns false' do
            expect(Palindrome.palindrome?('ac')).to eq(false)
          end
        end
      end

    end

    it 'returns true for "A man, a plan, a canal, Panama!"' do
      string = 'A man, a plan, a canal, Panama!'
      expect(Palindrome.palindrome?(string)).to eq(true)
    end
  end
end
