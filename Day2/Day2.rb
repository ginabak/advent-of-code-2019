def main
  array = []
  sequence = File.open("Day2Text.txt")
  sequence.each do |line|
    array << line.split(",")
  end
  #note to self: flatten make it into a 1D array :) 
  array.flatten!
  puts array

end

main