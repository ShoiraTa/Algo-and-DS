friends = {
  Mohigul: "female",
  Adham: "male"
}

friends["Nigina"] = "f"            #=> {:Mohigul=>"female",:Adham=>"male",Nigina"=>"f"}          
friends.fetch(:Adham)                  #=> "male"
friends.length                         #=> 2
friends.empty?                         #=> false
friends.to_a                           #=>[[:Mohigul, "female"], [:Adham, "male"]]
friends.to_h                           #=> {:Mohigul=>"female", :Adham=>"male"}
friends.sort                           #=>[[:Adham, "male"], [:Mohigul, "female"]]
friends.sort.reverse                   #=>[[:Mohigul, "female"], [:Adham, "male"]]  
friends.keys                           #=>[:Mohigul, :Adham]
friends.values                         #=>["female", "male"]
friends.key?(:Mohigul)                 #=>true
friends.value?("gender")               #=>false
friends.delete(:Mohigul)               #=> {:Adham=>"male"}

friends.sort_by{|key, val|val}              #=> [[:Mohigul, "female"], [:Adham, "male"]]
friends.each{|key, val| p "my friendlist#{key} is #{val}"}
friends.each{|friends|  p friends[1]}       #=>"female" "male"
friends.each_key{|val| p "val: #{val}"}     #=> "val: Mohigul" "val: Adham"
friends.each_value{|val| p "val is #{val}"}
friends.map{|key, val|val.upcase}     #=> ["FEMALE", "MALE"]
friends.select{|name, gen| gen =="female"}  #=>  {:Mohigul=>"female"}
friends.reject{|name, gen| gen =="female"}  #=>  {:Adham=>"male"}



#Creating Hashes

my_hash = { 
  "a random word" => "ahoy", 
  :Dorothy => 94, 
  array:  [1, 2, 3],
  "an empty hash within a hash" => {} 
}

#create new hash with default val
my_hash = Hash.new("this is default value of new hash")

#change default val of hash
my_hash.default = "not found"

#Accessing Values
friends[Mohigul:]                    #=> "Mohigul"

#Adding and Changing Data
friends["Nigina"] = "female"         #=> {:Mohigul=>"female", :Adham=>"male", "Nigina"=>"female"}
            


#.each
friends.each{|key, val| p "my friendlist#{key} is #{val}"}

#.each_key
friends.each_key{|val| p "val is #{val}"}
friends.each_value{|val| p "val is #{val}"}

#.each_value
friends.each_value{|val| p "val is #{val}"}

#.map
 friends.map{|key, val|val.upcase}     #=> ["FEMALE", "MALE"]

#.keys
friends.keys                           #=>[:Mohigul, :Adham]

#.values
friends.values                         #=>["female", "male"]

#.to_a 
friends.to_a                           #=>[[:Mohigul, "female"], [:Adham, "male"]]

#.to_h
friends.to_h                           #=> {:Mohigul=>"female", :Adham=>"male"}

#.sort (hash turns into sorted arr)
friends.sort                           #=>[[:Adham, "male"], [:Mohigul, "female"]]

#.reverse
friends.sort.reverse                   #=>[[:Mohigul, "female"], [:Adham, "male"]]

#.sort_by
friends.sort_by{|key, val|val}         #=> [[:Mohigul, "female"], [:Adham, "male"]]

#.select
friends.select{|name, gen| gen =="female"}  #=>  {:Mohigul=>"female"}

#.reject 
friends.reject{|name, gen| gen =="female"}  #=>  {:Adham=>"male"}

#Merging Two Hashes
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }
  
#convert sym to str sym.to_str // intern
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
strings.each {
  |a| symbols.push(a.to_sym)
}

#.dup
friends.dup              #=> create dublicate of hash

