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
    letters.pop
    sorted_letters = letters.sort { |a, b|  a <=> b} 
    letter_array << sorted_letters
    letter_array << word[-1]
    letter_array.flatten!
    
    exclusions.each { |a| if a 
                letter_array.insert(a[1], a[0])
    end }
    letter_array.join("")
    }
  end
  return sorted_words.join(" ")
end
