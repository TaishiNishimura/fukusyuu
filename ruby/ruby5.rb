currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['itary'] = 'euro'
puts currencies

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
puts currencies['india']

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end 