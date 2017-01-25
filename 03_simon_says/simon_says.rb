def echo(input)
  return input
end

def shout(input)
  return input.upcase
end

def repeat(input, times_to_repeat=2)

  result = "#{input} " * times_to_repeat
  return result[0..result.length-2]
end

def start_of_word(input, num_of_letters)
  return input[0..num_of_letters-1]
end

def first_word(input)

  #split method not used as this does not account for other
  #chars such as _ or -

  index = 0
  while ( letter?(input[index]))
    index += 1
  end

  return input[0, index]

end

def titleize(input)

  #split method not used as this does not account for other
  #chars such as _ or -

  #capitalise first letter
  input[0] = input[0].capitalize
  last_index = input.length-1

  (input.length).times do |a|
    #find all not letter characters and capitalise the following letter if it
    #is a letter
    next_char = a+1
    if( (not letter?(input[a])) and (letter?(input[next_char])) and (a < last_index) )
      #identify if the word is a small word. If it is don not capitalise
      if( not isWordSmall(grabNextWord(input, next_char)) )
        input[next_char] = input[next_char].capitalize
      end
    end
  end

  return input
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

def isWordSmall(input)
  input = input.downcase
  ["and", "over", "me", "my", "we", "the"].each do |word|
    if( word.eql?(input) )
      return true
    end
  end
  return false
end

puts titleize("war and peace")
