a = [1, 2, 3, 4, 5, 6]
puts a[1..5]

a = 'abcdf'
puts a[1..6]

def liquid?(temp)
  (0...100).include?(temp)
end 
puts liquid?(99)

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300 
  when 13..18
    600
  else
    1000
  end 
end
puts charge(18)

sum = 0
(1..4).each { |n| sum += n }
puts sum

numbers = []
(1..10).step(2) { |n| numbers << n }
puts numbers