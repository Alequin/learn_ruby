def translate(sentence)

  result = ""
  words = splitWordsUp(sentence)

  a=0
  while(a < words.length)

    words[a] = translateToPigLatin(words[a])
    result += words[a]

    if(a == words.length-1)
      break
    else
      result += " "
    end

    a+=1
  end

  return result
end

def translateToPigLatin(word)

  if(vowel?(word[0]))
    return word + "ay"
  end

  last_const_index = 0
  for a in 0..word.length-1
    if(not vowel?(word[a]))
      last_const_index = a
    elsif (word[a] == 'u' and word[a-1] == 'q')
      last_const_index = a
    else
      break
    end
  end

  new_word = word[last_const_index+1..word.length-1] + word[0..last_const_index]
  new_word += "ay"

end

def vowel?(char)

  if(char.length != 1)
    return false
  end

  char = char.downcase

  ['a','e','i','o','u'].each do |a|
    if(char == a)
      return true
    end
  end

  return false
end

def splitWordsUp(sentence)

  result = []

  a=0
  while(a < sentence.length)

    word = grabNextWord(sentence,a)

    if(word.length != 0)
      a += word.length
      result.push(word)
    else
      a += 1
    end

  end

  return result
end

#From the string given it returns all the chars as a string from the first
#given char to the next char that is not a letter (does not included the non
#letter char at the end)
def grabNextWord(input, start_index)

  end_index = start_index
  word = ""
  while(letter?(input[end_index]))
    end_index+=1
  end

  return input[start_index..end_index-1]
end

def letter?(char)

  case char
  when ("a".."z")
    return true
  when ("A".."Z")
    return true
  else
    return false
  end
end
