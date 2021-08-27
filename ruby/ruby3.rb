a = [1, 2, 3, 4, 5]
puts a.values_at(0, 2, 4)

a = [1, 2, 3]
puts a[a.size - 1]

a = [1, 2, 3]
puts a.last(2)

a = []
puts a.push(1)
puts a.push(2, 3)

a = [1, 2, 3]
b = [3, 4, 5]
puts a & b

puts 'ruby'.chars

a= Array.new(10) { |n| n % 3 + 1 }
puts a