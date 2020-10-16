# frozen_string_literal: true

# Implementation of the Hill number
class HillCipher
  ALPHABET = ('a'..'z').to_a

  def encode(message, key)
    split_message = message.split(//)
    split_key = key.split(//)

    matrice_key = []
    split_key.each do |char|
      matrice_key << ALPHABET.index(char)
    end

    matrice_message = []
    split_message.each do |char|
      matrice_message << ALPHABET.index(char)
    end

    first_row = matrice_key[0] * matrice_message[0] + matrice_key[1] * matrice_message[1] + matrice_key[2] * matrice_message[2]
    second_row = matrice_key[3] * matrice_message[0] + matrice_key[4] * matrice_message[1] + matrice_key[5] * matrice_message[2]
    last_row = matrice_key[6] * matrice_message[0] + matrice_key[7] * matrice_message[1] + matrice_key[8] * matrice_message[2]

    final_message = [first_row % 26, second_row %26, last_row % 26]

    encrypted_message = []
    final_message.each do |num|
      encrypted_message << ALPHABET[num]
    end

    encrypted_message.join
  end
end
