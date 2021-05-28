=begin
Letter Counter (Part 1)
Write a method that takes a string with one or more space separated words and returns a hash that shows the 
number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Problem
- Create a method which takes 1 parameter (string)
- String contains 1 or more space separated words
- Returns a hash that shows the word size(key) and value of how many words there are of that size
- each word is separated by spaces
- punctuation counts as part of the word

Input: String
Output: Hash

# Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Data
String
Hash
Array?

# Algo
- Initiate a method, takes 1 parameter
- Initiate an empty hash to push data
- Split the string at the spaces to separate out each word (an array)
- For each word in the array, count the number of letters and add it to the hash
  - If the number of letters is not there, add a new key with the starting value of 1
  - If the number is there, just add 1 to the value
- Return the hash

# Code
=end

def word_sizes(text)
  word_size_count = {}
  text.split(/ /).each do |word|
    size = word.size
    if word_size_count.include?(size)
      word_size_count[size] += 1
    else
      word_size_count[size] = 1
    end
  end
  word_size_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}