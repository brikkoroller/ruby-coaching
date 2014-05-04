def ex1_for_loop(threshold)
  max = threshold-1
  sum = 0
  for candidate in 1..max do
    if candidate % 3 == 0 or candidate % 5 == 0
      sum = sum + candidate
    end
  end
  return sum
end

puts 'Using for loop:'
puts "  With input '10'   -> '#{ex1_for_loop(10)}'"
puts "  With input '1000' -> '#{ex1_for_loop(1000)}'"

def ex1_inject(threshold)
  max = threshold-1
  (1..max).inject(0) do |sum,i|
    if i % 3 == 0 or i % 5 == 0 then
      sum + i # add to accumulator
    else sum # don't add, just propagate value
    end
  end
end

puts 'Using for inject:'
puts "  With input '10'   -> '#{ex1_inject(10)}'"
puts "  With input '1000' -> '#{ex1_inject(1000)}'"

