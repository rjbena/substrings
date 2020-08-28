 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 
 def substrings(string, arr)
    
    string = string.downcase.split(/ /)
    result = {}
    p string
    string.each do |word|
        arr.each do |dict| 
            if word.include?(dict)
                if result.has_key?(dict) == false
                    result[dict] =0
                end
                result[dict] +=1
            end
        end
    end
    return result
 end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
#{"part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}