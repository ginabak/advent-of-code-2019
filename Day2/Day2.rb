def main

  array = []
  sequence = File.open("Day2Text.txt")
  sequence.each do |line|
    array << line.split(",")
  end

  #note to self: flatten() makes it into a 1D array :) 
  array.flatten!
  
  #create duplicate with new_array to store new values :) 
  new_array = []
  new_array.replace(array)
  
  first_temporary_index = 0 
  second_temporary_index = 0
  third_temporary_index = 0
  storing_value = 0

  # iterating through the array (with index value :))
  array.each_with_index do |num, index|

    # potential super nested ternary ... lol, probs not a good idea: 
    # (opcode_hash.key?(num))? (((num ==1)? ( puts 'add')) : ((num == 2)? ( puts 'multiply') : (break))) : ()
    
    first_temporary_index = array[index+1]
    second_temporary_index = array[index+2]
    third_temporary_index = array[index+3]
    case num
    when 1
      storing_value = array[first_temporary_index] + array[second_temporary_index]
      new_array[third_temporary_index] << storing_value
    when 2
      ''
    when 99
      break
    else
    end





    # puts "This is the value:#{num}, index: #{index}"
    

  end

end

main