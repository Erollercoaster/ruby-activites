def is_isogram?(input)
    seen_letters = Set.new

    input.each_char do |letter|
        next unless letter.match?(/[a-zA-Z]/)

        lowercase_char = letter.downcase

        return false if seen_letters.include?(lowercase_char)

        seen_letters.add(lowercase_char)
    end

    true
end

# Test cases

puts is_isogram?("") 
puts is_isogram?("Dermatoglyphics") 
puts is_isogram?("aba")
puts is_isogram?("moOse")
