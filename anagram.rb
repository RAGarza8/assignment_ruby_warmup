# # Write a method anagrams which returns an array 
# of anagrams that can be made with the specified 
# string. Assume the input is only a single word 
# (e.g. "loot" not "William Shakespeare").

# # Download enable.txt, a popular Scrabble dictionary, 
# and load it in as your dictionary of choice. 
# If you haven't encountered Ruby's file I/O yet, 
# you can test your method by simply providing an 
# array of known anagrams like those below to check 
# that it works properly.

# # You can use Dir.pwd to output the current 
# directory. If you can't find the dictionary, 
# double check the directory you're executing your 
# script from within.

def anagrams(word)
  sort_word = word.split("").sort.join
  anagrams_array = []
  IO.foreach("enable.txt") {|line| anagrams_array << line.chomp}
  anagrams_array.select do |anagram| 
    anagram.split("").sort.join == sort_word
  end 
end

puts anagrams("enable")
