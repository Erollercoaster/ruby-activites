def remove_vowels(input_string)
    vowels = Set.new(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
    result_string = ""
  
    input_string.each_char do |char|
      unless vowels.include?(char)
        result_string << char
      end
    end
  
    return result_string
  end
  
  # test case
  input_string = "This website is for losers LOL!"
  result = remove_vowels(input_string)
  puts result