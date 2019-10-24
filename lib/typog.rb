def typo_g(word)
  if word.length <= 3
    return word
  else
    y = word.split("")
    x = [y.shift]
    y.pop
    z = y.sort { |a, b| a <=> b} 
    x << z
    x << word[-1]
    return x.join("")
  end
end