dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input = "Howdy partner, sit down! How's it going?"

def substrings(input, dictionary)
    dictionary_hash = dictionary.reduce(Hash.new(0)) do |object, word|
        input.split(' ').each { |value| object[word] += 1  if value.downcase.include?(word)} 
            object
    end 
    p dictionary_hash 
end

substrings(input, dictionary)