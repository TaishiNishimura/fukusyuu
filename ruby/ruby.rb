numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum 

a = [1, 2, 3, 1, 2, 3]
a.delete(2)
puts a

a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
 n.odd?
end
puts a

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end 
puts sum 

numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
puts sum

numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
puts new_numbers

numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
puts new_numbers

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiples_of_three

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find { |n| n.even? }
puts even_number