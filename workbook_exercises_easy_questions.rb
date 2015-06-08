#Quiz 1
#1) Should print out the numbers of the array with only one copy of each number.
#This does not permanently change the array, therefore the numbers array will still be [1, 2, 2, 3].

#2) When ! is used at the beginning of a method or operator it can sometimes mean "not" or "opposite", such as not equal (!=), and when used at the end it usually means 
#that the method is modifying the original data. Using ? in the code usually means that we are asking for the truth value of some method or statement on 
#the object. These are just genaralities and are not always correct.

#3) Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")

#4) Given: numbers = [1, 2, 3, 4, 5]
# What would the following return? (a) numbers.delete_at(1)    (b) numbers.delete(1)
#  (a) Should delete the item located at index 1 in the numbers array, thus we have numbers = [1, 3, 4, 5].
#  (b) Should delete the number 1 from our array, thus we have numbers = [2, 3, 4, 5].

#5) Programmatically determine if 42 lies between 10 and 100.

(10...100).cover?(42)

#6) Starting with the string: famous_words = "and seven years ago...", show two different ways to put the expected "Four score and " in front of it.

famous_words = "and seven years ago..."

new_words = "Four score and " + famous_words
new_word = famous_words.prepend("Four score and  ")

#7) 


#8) Given: ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]. Make this into an un-nested array.

flinstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flinstones.flatten

#9) Given the hash: flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 },
# turn this into an array containing only two elements: Barney's name and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

#10) Given the array: flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"], 
# turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flinstones.hash = {}
flinstones.each_with_index { |name, index| flinstones_hash[name] = index } 

#-------------------------------------#-------------------------------------#-------------------------------------#-------------------------------------

#Quiz 2
#1) Find an age for spot in this hash, ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")

#2) Add up all of the ages from our current Munster family hash: ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.inject(:+)

#3) In the age hash: ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }, throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if { |name, value| value < 100 }

#4) Starting with this string:
#munsters_description = "The Munsters are creepy in a good way."
#Convert the string in the following ways (code will be executed on original munsters_description above):
#{}"The munsters are creepy in a good way."
#{}"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
#{}"the munsters are creepy in a good way."
#{}"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

#5) ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }, add ages for Marilyn and Spot to the existing hash,
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#6) Pick out the minimum age from our current Munster family hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

#7) See if the name "Dino" appears in the string below:
# advice = "Few things in life are as important as house training your pet dinosaur.

advice = "Few things in life are as important as house training your pet dinosaur."
advice.match("Dino")

#8) flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles). Find the index of the first name that starts with "Be".

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones.index { |name| if name[0, 2] == "Be"}

#9) Using array#map!, shorten each of these names to just 3 characters:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones.map! { |name| name[0, 3] }

#-------------------------------------#-------------------------------------#-------------------------------------#-------------------------------------


#Quiz 3
#1) Show an easier way to write this array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#2) How can we add the family pet "Dino" to our usual array: flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones<<"Dino"

#3) How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones.push("Dino").push("Hoppy")

#4) Shorten this sentence: advice = "Few things in life are as important as house training your pet dinosaur.",
# ...remove everything starting from "house".

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index("house"))

#5) Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
statement.scan(t).count

#6) If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
title.center(40)


#-------------------------------------------------Fin---------------------------------------------#



































