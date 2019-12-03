def main
  
  total_num = 0 
  file = File.open("Day1Text.txt")
  array = []

  # must be a lambda since a value is returned! 
  # take mass divide by three round down (floor) and subtract by 2
  calculate_file = lambda do |file|
    #block to append each value to array
    file.each do |line|
      num = line.to_i
      value =(num.div(3)).floor()
      value -= 2
      array << value
    end
    return array
  end
  #test
  calculated_num = calculate_file.call(file)
  puts calculated_num.inject(:+)
end
  
main


