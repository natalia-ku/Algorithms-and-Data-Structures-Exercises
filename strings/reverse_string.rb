
# Reverse string by letters:
puts "Enter a string: "
string = gets.chomp
words = string.split("")
new_sentence = []

words.reverse_each do |w|
	new_sentence << w
end
print new_sentence

# Reverse string by words:
puts "Enter a string: "
string = gets.chomp
words = string.split(" ")
new_sentence = []

words.reverse_each do |w|
	new_sentence << w
end
print new_sentence

#Reverse array of chars word by word(consider whitespaces):
puts "Enter a string: "
string = gets.chomp
array = string.split("")
print array
new_sentence = ""
last_word_end_index = 0
(0...array.length).each do |i|
	word = ""
	if array[i] == " " || i == array.length-1
		word << " " if  i == array.length-1
		i.downto(last_word_end_index).each do |n|

			word << array[n]
		end
		new_sentence << word
		last_word_end_index = i + 1
	end
end
print new_sentence
