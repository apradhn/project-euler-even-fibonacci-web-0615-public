def even_fibonacci_sum(limit, previous=1, current=2)
  even_sum = 2
  loop do 
    fib = previous + current
    even_sum += fib if fib.even?  
    previous = current
    current = fib 
    break if previous + current > limit
  end
  even_sum
end