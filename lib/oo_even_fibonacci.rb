class EvenFibonacci
  attr_accessor :count

  def initialize(count)
    @count = count
  end

  def sum
    first = 1
    second = 2
    fibs = [1, 2]
    fib = 0
    while fib < count
      fib = first + second
      fibs << fib if fib < count && fib.even?
      first = second
      second = fib
    end
    fibs.reject{|fib| fib == 1}.inject(0){|sum, fib| sum + fib}     
  end
  
end