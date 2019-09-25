def calculate_second_large_quality(array)
  array.each do |num|
    large_striker = 0
    array.each { |item| large_striker += 1 if num >= item }

    break num if large_striker == array.size - 1
  end
end