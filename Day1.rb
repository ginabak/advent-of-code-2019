# open file
def main
  
  total_num = 0 
  file = File.open("Day1Text.txt")
  array = []

  # must be a lambda since a value is returned! 
  # take mass divide by three round down (floor) and subtract by 2
  calculate_file = lambda do |file|
    file.each do |line|
      num = line.to_i
      value =(num.div(3)).floor()
      value -= 2
      return value
    end
  end
  #test
  calculated_num = calculate_file.call(file)
  puts calculated_num
end
  

  # Must use a lamdba since I need to return a value
  # file.each do |line|
  #   num = line.to_i
  #   value = (num.div(3)).floor()
  #   value -= 2
  #   puts value
  #   total_num += value
  #   puts total_num
  # end

main


