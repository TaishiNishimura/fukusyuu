a = []
14.downto(10) { |n| a << n }
puts a

a = []
1.step(10, 4) { |n| a << n }
puts a

a = []
while a.size < 5
  a << 1
end 
puts a

a = []
a << 1 while a.size < 5
puts a

numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  break if n == 5
end 