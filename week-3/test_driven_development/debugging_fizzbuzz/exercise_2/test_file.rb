# p ('a'..'z').to_a + ('0'..'9').to_a
# p "secretkey".chars.uniq
cipher = "secretkey".chars.uniq + (('a'..'z').to_a - "secretkey".chars)
plaintext = "theswiftoxjumpedoverthelazydog"

cipher_text = plaintext.chars.map do |char|
  (65 + cipher.find_index(char)).chr
end
puts "cipher: #{cipher}"
# puts "cipher text: #{cipher_text}"


ciphertext_chars = "theswiftfoxjumpedoverthelazydog".chars.map do |char|
  (("secretkey".chars.uniq + (('a'..'z').to_a - "secretkey".chars)).find_index(char))
end
puts "ciphertext characters: "
p ciphertext_chars
# p ciphertext_chars.join
# p (0...36).map{ |i| i.to_s 36}
# p ('a'...'z').to_a

ciphertext = "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
plaintext_chars = ciphertext.chars.map do |char|
  cipher[char.ord - 65]
end

puts "plaintext characters: "
p plaintext_chars

# alphabet = ('A'..'Z').to_a
# alphabet1 = alphabet.join
# p alphabet1
# alphabet_ord = alphabet1.chars.map do |char|
#   char.ord
# end
# p alphabet_ord