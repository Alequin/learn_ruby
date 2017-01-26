require "splitWordsUp"

class Book

  attr_accessor :title

  def title=(title)

    #split the words up
    words = splitWordsUp(title)

    #captialise the first word
    words[0] = words[0].capitalize

    #caplitalise all other words as long as they are not small words
    for a in 1..words.length-1
      if(not smallWord?(words[a]))
        words[a] = words[a].capitalize
      end
    end

    result = ""
    for a in 0..words.length-2
      result += words[a] + " "
    end

    @title = result + words[words.length-1]
  end

  private

  def smallWord?(word)

    ['the','and','a','an','in','of'].each do |a|
      if(a == word)
        return true
      end
    end
    return false
  end

end
