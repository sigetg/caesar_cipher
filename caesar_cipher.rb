#Author: George Sigety

def caesar_cipher(string, shift)
  string_array = string.split('')
  new_array = string_array.map do |char|
    char_code = char.ord
    if char_code in 97..122
      shifted = char_code + shift
      if shifted > 122
        shifted = shifted - 26
      end
    elsif char_code in 65..90
      shifted = char_code + shift
      if shifted > 90
        shifted = shifted - 26
      end
    else
      shifted = char_code
    end
    char = shifted.chr
  end
  new_array.join()
end

puts caesar_cipher("What a string!", 5)