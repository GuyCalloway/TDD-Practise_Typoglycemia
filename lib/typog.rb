def typo_g(string)
  if string.length <= 3
    return string
  else
    words = string.split(" ")
    sorted_words = words.map { |word| 
        y = word.split("")
    x = [y.shift]
    y.pop
    z = y.sort { |a, b| a <=> b} 
    x << z
    x << word[-1]
    x.join("")
    }
  
  end
  return sorted_words.join(" ")
end