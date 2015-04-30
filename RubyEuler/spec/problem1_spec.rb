require 'ProblemOne'

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

describe ProblemOne do

  it 'knows that all multiples of 3 or 5 below 10 sums to 23' do
    expect(subject.sum_multiples(10)).to eq 23
  end

  it 'builds and array of the all multiples of 3 below 10 as [3,6,9]' do
    subject.multiples(10, 3)
    expect(subject.all_multies).to match_array([3,6,9])
  end

  it 'knows that all multiples of 3 or 5 below 20 sums to 78' do
    expect(subject.sum_multiples(20)).to eq 78
  end

  it 'knows that all multiples of 3 or 5 below 1000 sums to 233168' do
    expect(subject.sum_multiples(1000)).to eq 233168
  end

end

