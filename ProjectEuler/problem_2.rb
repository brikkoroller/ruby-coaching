# IN n:   1  2  3  4  5, 6,  7
# OUT :   1, 2, 3, 5, 8, 13, 21...
def n_th_fibonacci(n)
  return 1 if n == 1
  return 2 if n == 2
  return n_th_fibonacci(n-1) + n_th_fibonacci(n-2)
end

def ex2(threshold)
  sum = 0
  i = 1
  while true do
    temp_fib = n_th_fibonacci(i)
    
    if temp_fib >= threshold then
      puts "DONE. The sum is: #{sum}"
      return # stop!
    end
    
    i = i + 1
    if temp_fib % 2 == 0 then # is even?
      puts "adding --> #{temp_fib}"
      sum = sum + temp_fib
    end
  end
  
end


# A.
ex2(4000000)
    