def main

  opcode_hash = {
    1 => {},
    2 => {},
    99 => {},
  }
  array = []
  sequence = File.open("Day2Text.txt")
  sequence.each do |line|
    array << line.split(",")
  end
  
  #note to self: flatten() makes it into a 1D array :) 
  array.flatten!
  
  #create new_array to store new values :) 
  new_array = Array.new((array.length),0)

  temporary_index = 0 

  # iterating through the array (with index value :))
  array.each_with_index do |num, index|
    # potential super nested ternary ... lol, probs not a good idea: 
    # (opcode_hash.key?(num))? (((num ==1)? ( puts 'add')) : ((num == 2)? ( puts 'multiply') : (break))) : ()
    case num
    when 1
      temporary_index = index
      temporary_index += 1
      array[temporary_index]
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