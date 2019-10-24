def typo_g(string)
   z = ""
   x = false

  if string.length <= 3
    return string
  else
    words = string.split(" ")
    
    sorted_words = words.map { |word| 
        y = word.split("")
    x = [y.shift]
    y.pop
    z = y.sort { |a, b| a.match(/\.|,|'|-/) ? 0 : b.match(/\.|,|'|-/) ? 0 : a <=> b} 
    x << z
    x << word[-1]
    x.join("")
    }
  end
  return sorted_words.join(" ")
end
