require 'ProblemTwo'

#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

describe EvenFibo do

  context 'is created with' do
    it 'initializes with an array of [1,2]' do
      expect(subject.term_array).to match_array([1,2])
    end

    it 'initializes with a terms value of 0 as a default' do
      expect(subject.terms).to be 0
    end
  end

  context 'fibonacci new term' do
    it 'of 1,2 adds 1 plus 2 to generate the new term of 3' do
      subject.new_term
      expect(subject.new_term).to eq 3
    end

    it 'of 1,2,3 adds 2 plus 3 to generate the new term of 5' do
      subject.term_array.push(3)
      subject.new_term
      expect(subject.new_term).to eq 5
    end
  end

  context 'generate fibonacci array of terms' do
    it 'for terms that are less than 20 returns 1, 2, 3, 5, 8, 13' do
      subject.generate_seq(20)
      expect(subject.term_array).to match_array([2, 8])
    end

     it 'for the first 5 terms the sum is 19' do
      expect(subject.sum_terms [1,2,3,5,8]).to eq 19
    end
  end

  context 'generate fibonacci and return sum less than the limit' do
    it 'has a limit of 4,000,000 and returns a sum of' do
      subject.generate_seq(4000000)
      expect(subject.sum).to eq 4613732
    end
  end

  context 'checks if term is even' do
    it 'only sums up the even terms that sum less than 20 to total 10' do
      subject.generate_seq(20)
      expect(subject.sum).to eq 10
    end
  end
end