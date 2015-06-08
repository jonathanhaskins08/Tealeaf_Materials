#Quiz 1
#1) What do you expect to happen when the greeting variable is referenced in the last line of the code below?

# if false
#   greeting = “hello world”
# end

# greeting
# We get nil. 

# There were no probles with the code, but nothing was printed as well.

#2) What is the result of the last line in the code below?

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting
# puts greetings

#The result of the last line puts greeting which is {:a=>"hi there"} since the push method was used so it changed the original string.

#3) What will be printed by each of these code groups?

# A)

#   def mess_with_vars(one, two, three)
#     one = two
#     two = three
#     three = one
#   end

#   one = "one"
#   two = "two"
#   three = "three"

#   mess_with_vars(one, two, three)

#   puts "one is: #{one}"
#   puts "two is: #{two}"
#   puts "three is: #{three}"
# B)

#   def mess_with_vars(one, two, three)
#     one = "two"
#     two = "three"
#     three = "one"
#   end

#   one = "one"
#   two = "two"
#   three = "three"

#   mess_with_vars(one, two, three)

#   puts "one is: #{one}"
#   puts "two is: #{two}"
#   puts "three is: #{three}"
# C)

#   def mess_with_vars(one, two, three)
#     one.gsub!("one","two")
#     two.gsub!("two","three")
#     three.gsub!("three","one")
#   end

#   one = "one"
#   two = "two"
#   three = "three"

#   mess_with_vars(one, two, three)

#   puts "one is: #{one}"
#   puts "two is: #{two}"
#   puts "three is: #{three}"


# The set of code in A) will print out :
# "one is: one"
# "two is: two"
# "three is: three"

#The set of code in B) will have the same output as A) since the variables are changed within the method thus when the method is done it leaves the 
# changed variables behind and goes back to the original values.

#The set of code in C) will output:
# "one is: two"
# "two is: three"
# "three is: one"
#This change happens due to the use of the gsub! method being used which changes the original value of the variable, therefore when the method is over
# the variable still has the new value.

#4) A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. 
# That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID 
# with no significant chance of stepping on each other's toes.
# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.
# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# Write a method that returns one UUID when called with no parameters.

def generate_UUID
    characters = [] 
    (0..9).each { |digit| characters << digit.to_s }
    ('a'..'f').each { |digit| characters << digit } #Now our characters array is filled with possible elements for our uuid

    uuid = "" #sets the uuid as a string
    sections = [8, 4, 4, 4, 12]
    sections.each_with_index do |section, index| #creates the uuid
      section.times { uuid += characters.sample }
      uuid += '-' unless index >= sections.size - 1
    end

    uuid
end


#5) Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11".
# He is not familiar with regular expressions.
# Alyssa supplied Ben with a method called is_a_number? to determine if a string is a number and asked Ben to use it.

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break if !is_a_number?(word)
#   end
#   return true
# end
# Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, 
# and not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

# Help Ben fix his code.

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4 #Added code to return false if size is invalid

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word) #Got rid of break and instead used return  and the unless operator.
  end

  true #Dropped the return
end
















