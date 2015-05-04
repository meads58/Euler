class LargestPrime

  attr_reader :factor_array, :prime_factors

  def initialize
    @factor_array = []
    @prime_factors = []
    @sqroot = 0
  end

  def find_largest_prime number
    odd_factors number
    prime_checker number
    largest_prime
  end

  def prime_checker number
    @factor_array.each do |factor|
      @prime_factors.push(factor) if is_prime? factor
    end
  end

  def is_prime? factor
    sqroot = Math.sqrt(factor)
    2.upto(sqroot) do |checker|
      return false if factor % checker == 0
    end
    true
  end

  def largest_prime
    @prime_factors.max
  end

  def odd_factors number
    sqroot = Math.sqrt(number)
    1.step(sqroot, 2) do |num|
      p num
      @factor_array.push(num) if num == 0
    end
  end

end