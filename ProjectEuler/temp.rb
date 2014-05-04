# IN n:   1  2  3  4  5, 6,  7
# OUT :   1, 2, 3, 5, 8, 13, 21...
def n_th_fibonacci(n)
  return 1 if n == 1
  return 2 if n == 2
  return n_th_fibonacci(n-1) + n_th_fibonacci(n-2)
end

def ex2(threshold)
  for i in 1..threshold do
    puts "--> #{n_th_fibonacci(i)}"
  end
end

ex2(10)

# puts "  With input '10'      -> '#{ex2(10)}'"
#puts "  With input '4000000' -> '#{ex2(4000000)}'"
