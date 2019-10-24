def typo_g(string)
 
  if string.length <= 3
    return string
  else
    words = string.split(" ")
    sorted_words = words.map { |word| 
        letters = word.split("")
        exclusions = []
        letters.each_with_index do |a, i|
          if a.match(/\.|,|'|-/) 
            letters.delete_at(i)
            exclusions << [a, i]
          end
        end
    letter_array = [letters.shift]
    end_letter = letters.pop
    sorted_letters = letters.sort { |a, b|  a <=> b} 
    letter_array << sorted_letters
    letter_array << end_letter
    letter_array.flatten!

    exclusions.reverse.each { |a| if a 
                letter_array.insert(a[1], a[0])
    end }
    letter_array.join("")
    }
  end
  return sorted_words.join(" ")
end
