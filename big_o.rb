#Write a function that accepts an array as a parameter #and returns true or false depending on whether there are #any duplicate values. Use the *nested loops approach* as described in the slides.
array = [3, 4, 3, 7, 7, 8]

counts = Hash.new
array.each do |array|
  counts[array] += 1
end


p counts


# write a function
#function accepts an array as a parameter
#parameter returns true or false depending on if there are duplicates