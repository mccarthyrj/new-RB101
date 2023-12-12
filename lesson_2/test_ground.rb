# test_ground.rb

# c = 'now'
# a = c
# b = a
# a = 'goodbye'
# c = 'then'

# p puts a
# p puts b


# The code returns nil because that is the return value of the puts method. The output is goodbye and now, because on line 1 we initialized variable a and assigned it to string hello. Then on line two, we initialized variable be and assigned it to the value of variable a. On line three, variable a is reassigned to the string goodbye. Variable b is still point to the space where a was pointing before it was reassigned. This is a demonstration of variable assignement and how variables act as pointers to a space in memory of the program.

# a = 4

# loop do
#   a = 5
#   b = 3

#   break
# end

# puts a
# puts b

# The code returns nil for the puts method, and raises an error. Line 1 variable a is initialized and assigned to the integer 4, then 

# person = {
#   name: 'Alice',
#   age: 30
# }

# def update_age(obj)
#   obj = {grey: 'why', blue: 4}
# end

# puts update_age(person)
# puts person

# output hash person key name: value alice, key age value 31. This is reassignment of the value of the hash.

# short circuit evaluation
# or: first truthy
# and: first falsy, or last truthy
# 2
# 4
# 6
# 8
# 10

# for i in 1..5 do
# i *= 2
# end

# puts i

# string[idx] returns a new string object
# pass by reference pass by value

# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it? Means 'not equal' and should be used in a conditional to compare if value is not the same as another value.
# put ! before something, like !user_name Means 'not', and should be used to return the opposite boolean value
# put ! after something, like words.uniq! This generally but not always is the signature of a destructive method in ruby
# put ? before something Usually ? appears before the return values in a ternary operator, specifically right before the value that would return if the conditional evaluates to true.
# put ? after something This is either after the conditional in a ternary operator, or after a method call that is expected to return true or fals.
# put !! before something, like !!user_name Means 'not-not' and returns the same as the original value without bang operators.

# p 42 > 10 && 42 < 100
require "pry"
def high_low numbers
  arr = numbers.split
  arr.map! {|x| x.to_i}
  "#{arr.max}, #{arr.min}"
end

p high_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")



