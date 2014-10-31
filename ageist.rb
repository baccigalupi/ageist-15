# Loved that you used methods to encapselate your logic, and that you are trying out tail conditions

# A traditional if/else statement would be more approriate for this kind of problem
# It is much harder to read and understand with tail conditions since it is possible for each statement
# to be evaluated separately.
# 
# In a traditional if/elseif type of a statement you would only have to test the upper bound after the first
# branch of the if statement, which leads to less logic
def ageist(age)
  puts "baby, #{age}" if age <= 1
  puts "child, #{age}" if age > 1 && age < 10
  puts "tween, #{age}" if age.between?(10,12)
  puts "teen, #{age}" if age.between?(13,19)
  puts "adult, #{age}" if age.between?(20,39)
  puts "middle age, #{age}" if age.between?(40,65)
  puts "senior, #{age}" if age.between?(66,100)
  puts "record breaking, #{age}" if age > 100
end

def ageist2(age)
  case age
  when 0..1 then puts "baby, #{age}"
  when 2..9 then puts "child, #{age}"
  when 10..12 then puts "tween, #{age}"
  when 13..19 then puts "teen, #{age}"
  when 20..40 then puts "adult, #{age}"
  when 41..65 then puts "middle age, #{age}"
  when 66..100 then puts "senior, #{age}"
  when 101..110 then puts "record breaking, #{age}"
  end
end

puts "\nStarting original version..."
10.times { ageist(rand(110)) } # rand(110) does not exercise the full range
puts "\nStarting case statement version..."
10.times { ageist2(rand(110)) }
