#Quiz 1
#1) For this exercise, write a one-line program that creates 10 lines of the following:

#The Flintstones Rock!
# The Flintstones Rock!
#  The Flintstones Rock!

10.times{ |i| puts (" " + i) "The Flinstones Rock!"}

#2) Create a hash that expresses the frequency with which each letter occurs in this string:
#statement = "The Flintstones Rock"

statement = "The Flintstones Rock"
counting_array = {}
letters = (A..Z).to_a + (a..z).to_a
letters.each do |i|
	frequency_array = statement.scan(i).count
	counting_array[letter] = frequency_array if frequency_array > 0
end


#3) The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# This is an error because we can't add a string to an integer. It could work if we attached ".to_s" to (40 + 2)
# or if we used #{40 + 2} instead of (40 + 2) and also put it inside of the string.

#4) What happens when we modify an array while we are iterating over it?
#What would be output by this code?
#numbers = [1, 2, 3, 4]
#numbers.each do |number|
#  p number
#  numbers.shift(1)
#end

#This code would print 1, then shift knocks out 1 form the array (which was in the 0 index for the array), thus the next number to print is 3 since 2 is 
# now at the 0 index for the array and the code is now looking at index 1.

#What would be output by this code?

#numbers = [1, 2, 3, 4]
#numbers.each do |number|
#  p number
#  numbers.pop(1)
#end

#This codes output should be 1 and 2 since after it prints a number it pops off the last element of the array. After this has been done twice 1 and 2 have
# been printed and they are the only elements left in the array.

#5) Alan wrote the following method, which was intended to show all of the factors of the input number:

#def factors(number)
#  dividend = number
#  divisors = []
#  begin
#    divisors << number / dividend if number % dividend == 0
#    dividend -= 1
#  end until dividend == 0
#  divisors
#end

#Alyssa noticed that this will fail if you call this with an input of 0 or a negative number and asked Alan to change the loop. 
#How can you change the loop construct (instead of using begin/end/until) to make this work?


# We can change the loop into a while loop such that while dividend > 0 we continue with the code contained within the block.
# The new code should look like this:
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

#6) She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
# Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?


#def rolling_buffer1(buffer, max_buffer_size, new_element)
#  buffer << new_element
#  buffer.shift if buffer.size >= max_buffer_size
#  buffer
#end

#def rolling_buffer2(input_array, max_buffer_size, new_element)
#  buffer = input_array + [new_element]
#  buffer.shift if buffer.size >= max_buffer_size
#  buffer
#end

# Yes there is a difference between the two methods. In the first one since push was used it changes the given arrray, whereas in the second 
# method it does not change the input given.

#7) Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

#limit = 15

#def fib(first_num, second_num)
#  while second_num < limit
#    sum = first_num + second_num
#    first_num = second_num
#    second_num = sum
#  end
#  sum
#end

#result = fib(0, 1)
#puts "result is #{result}"
#How would you fix this so that it works?

#The problem wiht this code is that Ben defined limit outside of the method and therefore fib is unable to access limit which causes the error.
#Our new ode should look like this:



def fib(first_num, second_num)
	limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"


#8) In another example we used some built-in string methods to change the case of a string. 
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize! 
#This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title.
#Write your own version of the rails titleize!

words = "Your string here"
words.each.map! { |words| words.downcase.capitalize } .join(" ")
#Thus we have our string taken in and apart such that each word is made lowercase throughout and then the first leter is capitalized, 
# and the method continues onto the next word until the string is done. Once that is over the words are then joined into one long string again,
# where there are separated by one space.


#9) Given the munsters hash below

#munsters = { 
#  "Herman" => { "age" => 32, "gender" => "male" }, 
#  "Lily" => { "age" => 30, "gender" => "female" }, 
#  "Grandpa" => { "age" => 402, "gender" => "male" }, 
#  "Eddie" => { "age" => 10, "gender" => "male" },
#  "Marilyn" => { "age" => 23, "gender" => "female"}
#}
#Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group
# the family member is in (kid, adult, or senior). Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |info|
	case info("age")
	when 0...18
		info["age_group"] = "kid"
	when age 18...65 
		info["age_group"] = "adult"
	else info["age_group"] = "senior"
	end 
end


#--------------------------------------#--------------------------------------#--------------------------------------#-----------------------------------


#Quiz 2

#1) Figure out the total age of just the male members of the family.

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" } 
}

if gender of munster is male then add to total

total = 0
munsters.each do |name, info|
	total += info["age"] if info["gender"] == male
end

#2) Given this previously seen family hash, print out the name, age and gender of each family member:

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munster.each_pair do |name, info|
	puts "#{name} is a #{info["age"]} year old #{info["gender"]}"
end

#3) How can we refactor this exercise to make the result easier to predict and easier for the next programmer to maintain?

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param += ["rutabega"]
  return a_string _param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
a_string_param, an_array_param =  tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#4) Use this technique to break up the following string and put it back together with the words in reverse order:

sentence = "Humpty Dumpty sat on a wall."
reversed_sen = ()

words = sentence.split()
words.reverse!
reversed_sen = words.join(" ") + "."

#5) What is the output of the following code?

#answer = 42

#def mess_with_it(some_number)
#  some_number += 8
#end

#new_answer = mess_with_it(answer)

#p answer - 8

#The output should be 36 since answer was not returned from the method thus it is still equal to 42.

#6) Did the family's data get ransacked, or did the mischeif only mangle a local copy of the original hash? (why?)

#Yes. When the method was made is stored the munsters hash locally, but since spot did not assign it to a local variable in the method
# the newly made munsters hash was returned to the old hash and therefore we now have the munsters hash in disarray.

#7) def rps(fist1, fist2)
#  if fist1 == "rock"
#    (fist2 == "paper") ? "paper" : "rock"
#  elsif fist1 == "paper"
#    (fist2 == "scissors") ? "scissors" : "paper"
#  else
#    (fist2 == "rock") ? "rock" : "scissors"
#  end
#end

#What is the result of the following call?
#puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# The result is paper. We have to look at this from the inside out. We first have rock vs. paper which gives paper and also rock vs. scissors, 
# from which we get rock. Thus from those two we have paper vs. rock so we get paper. Finally we have paper vs. rock from which we get paper!

#8) Consider these two simple methods:

#def foo(param = "no")
#  "yes"
#end

#def bar(param = "no")
#  param == "no" ? "yes" : "no"
#end
#What would be the output of this code:

#bar(foo)

# The output will be no. From foo we will always get yes, and when we put yes into our bar method we see that yes == no is false. 
# Therefore our answer is no.

#--------------------------------------#--------------------------------------#--------------------------------------#-----------------------------------


#Quiz 3
#1) The pattern of the output is that the id of each varaible stays the same until the variable is manually switched to another value.
# Thus we see Ruby will try to reuse an id wherever it can

#2) 

#3) Let's call a method, and pass both a string and an array as parameters and see how even though they are treated in the same way by Ruby, the results can be different.

# Study the following code and state what will be printed...and why:

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# rutabaga and ["pumpkins, "rutabaga"] will be printed. This is because the += operator for strings actually creats a new string unlike the push function
# for the array which pushes the new element into the old array. Thus when we leave the method the new string is left inside and we are left with the
#  original string.

#4) To drive that last one home...let's turn the tables and have the string show a modified output, 
# while the array thwarts the method's efforts to modify the caller's version of it.

#def tricky_method_two(a_string_param, an_array_param)
#  a_string_param.gsub!('pumpkins', 'rutabaga')
#  an_array_param = ['pumpkins', 'rutabaga']
#end

#my_string = "pumpkins"
#my_array = ["pumpkins"]
#tricky_method_two(my_string, my_array)

#puts "My string looks like this now: #{my_string}"
#puts "My array looks like this now: #{my_array}"

# Our output fro this method is rutabaga and ["pumpkins"] since


#5) How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#The code can be changed to:

def color_valid(color)
  color == "blue" || color == "green"
end
# since || already evaluates the statment, the rest is not needed




























