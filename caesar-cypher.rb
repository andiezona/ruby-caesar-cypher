puts "What message do you want to encrypt?"
  message = gets.chomp.to_s

puts "Enter a number to shift the characters in your message"
  shift = gets.chomp.to_i


def caesar_cypher(message, shift)
  original_message = message.bytes

  shifted_message = original_message.map { |letter| (letter >= 65 && letter <= 90)|| (letter >= 97 && letter <= 122) ? letter + shift : letter}

  new_message = shifted_message.map { |letter| letter.to_i.chr}
  new_message.join
end

caesar_cypher(message, shift)

# take input of string and shift number
# convert each character to ASCII number
# cycle through each letter:
# add the ASCII number to the shift number
# convert ASCII number back to a letter
# convert indv letters back into a string
# return the cyphered string