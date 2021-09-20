require_relative'../lib/fizz_buzz.rb'

# ******* Test Cases *******
# when given multiple of 3, retunr 'Fizz'
# when given multiple of 5, return 'Buzz'
# when given multiple of 3 & 5, return 'FuzzBuzz'
# otherwise, return the number

RSpec.describe FizzBuzz do
  describe '#play' do
    it 'returns "Fizz", when given 3' do
      # Arrange
      fizz_buzz = FizzBuzz.new
      # Act
      # Assert
      expect(fizz_buzz.play(3)).to eq 'Fizz'
    end

    it 'returns "Buzz", when given 5' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.play(5)).to eq 'Buzz'
    end

    it 'returns "FizzBuzz", when given 15' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.play(15)).to eq 'FizzBuzz'
    end

    it 'returns 1, when given 1' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.play(1)).to eq 1
    end

    describe '#is_divisible?' do
      it 'returns true when given 3 and 3' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.is_divisible?(3, 3)).to be true
      end

      it 'return true when given 3 and 9' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.is_divisible?(9, 3)).to be true
      end

      it 'return false when given 5 and 6' do
        fizz_buzz = FizzBuzz.new
        expect(fizz_buzz.is_divisible?(5, 6)).to be false
      end
    end
  end
end