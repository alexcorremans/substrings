def substrings text, dictionary
  wordshash = Hash.new
  # make sure every word is lower case
  text_words = text.split(" ")
  text_words.map! do |word|
    word.downcase
  end
  text = text_words.join(" ")
  # if a word appears in the string, check how many times & add that to the hash
  dictionary.each do |word|
    if text.match(/#{word}/)
      wordshash[word] = text.scan(/(?=#{word})/).count
    end
  end
  return wordshash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
