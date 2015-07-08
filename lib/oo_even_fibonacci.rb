class EvenFibonacci
  attr_accessor :count

  def initialize(count)
    @count = count
  end

  def sum
    first = 1
    second = 2
    fib = 0
    sum = 2
    while fib < count
      fib = first + second
      sum +=  fib if fib < count && fib.even?
      first = second
      second = fib
    end
    sum    
  end



end