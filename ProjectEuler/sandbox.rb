# Recursive function
# fib(n) = fib(n-1) + fib(n-2)
def fibonacci(n)
  return 1 if n == 1
  return 2 if n == 2
  return fibonacci(n-1)+fibonacci(n-2)
end

# print fibonacci sequence:
(1..6).each do |i|
  #puts fibonacci(i)
  puts "#{i} -> #{fibonacci(i)}"
end
