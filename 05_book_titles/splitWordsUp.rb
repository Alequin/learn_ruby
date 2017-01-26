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
  when ('0'..'9')
      return true
  else
    return false
  end
end
