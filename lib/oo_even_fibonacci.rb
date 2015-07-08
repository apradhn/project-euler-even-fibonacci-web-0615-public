class EvenFibonacci
  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    previous, current, even_sum = 1, 2, 2
    loop do 
      fib = previous + current
      previous = current
      current = fib 
      even_sum += fib if fib.even?      
      break if previous + current > limit
    end
    even_sum
  end

end