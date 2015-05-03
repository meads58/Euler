class LargestPrime

  attr_reader :factor_array, :prime_factors

  def initialize
    @factor_array = []
    @prime_factors = []
    @sqroot = 0
  end

  def find_largest_prime number
    factors number
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

  def factors number
    1.upto(number) do |num|
      @factor_array.push(num) if number % num == 0
    end
  end

end