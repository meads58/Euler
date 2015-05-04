require 'ProblemThree'

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

describe LargestPrime do

  context 'check for prime' do
    it 'knows that 5 is a prime number' do
      expect(subject.is_prime?(5)).to be true
    end

    it 'knows that 6 is not a prime number' do
      expect(subject.is_prime?(6)).to be false
    end

    it 'knows that 9 is not a prime number' do
      expect(subject.is_prime?(9)).to be false
    end
  end

  context 'find all odd factors' do
    it 'knows all the factors of 20 are 1,5' do
      subject.odd_factors(20)
      expect(subject.factor_array).to match_array([1,5])
    end
  end

  context 'find all prime factors' do
    it 'knows that the prime factors of 13195 are 5,7,13 and 29' do
      subject.find_largest_prime 13195
      expect(subject.prime_factors).to match_array([1,5,7,13,29])
    end
  end

  context 'largest prime' do
    it 'of 13195 can be found and is 29' do
      expect(subject.find_largest_prime 600851475143 ).to eq 299
    end
  end

end