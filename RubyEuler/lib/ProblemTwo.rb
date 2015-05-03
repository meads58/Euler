class EvenFibo

  attr_reader :term_array, :terms, :sum

  def initialize
    @term_array = [1,2]
    @terms = 0
    @sum = 0
  end

  def new_term
    len = term_array.length
    @term_array[len - 1] + @term_array[len - 2]
  end

  def generate_seq limit
    if check_term_limit < limit then
      @term_array.push(new_term)
      generate_seq limit
    else
      even_terms
    end

  end

  def check_term_limit
    new_term
  end

  def even_terms
    @term_array.select! {|term| term % 2 == 0 }
    sum_terms @term_array
  end

  def sum_terms terms
     @sum = terms.inject(:+)
  end

end