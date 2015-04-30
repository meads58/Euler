class ProblemOne

  attr_reader :all_multies

  def initialize
    @all_multies = []
  end

  def sum_multiples limit
    multiples(limit, 3)
    multiples(limit, 5)
    @all_multies.uniq.inject(:+)
  end

  def multiples limit, multi
    1.upto(limit - 1) do |num|
      @all_multies << num if num % multi == 0
    end
  end




end