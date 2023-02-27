# A caesar cipher that shifts the ordinal number of a given character 5 spots down the letter as per US ASCII

def caesar_cipher(input_string)
  string_length = input_string.length
  result = ""
  input_string.each_char do |c|
    case c.ord
      when 65..86
        result << c.ord + 5
      when 87..91
        result << c.ord - 21
      when 97..117
        result << c.ord + 5
      when 118..123
        result << c.ord - 21
    else
      result << c
    end
  end
  puts result
end

caesar_cipher("What a string! You")

puts "I'm finished!"