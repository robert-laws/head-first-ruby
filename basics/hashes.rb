# hashes

# basic - hashes are key value pairs

hash_item = { name: "hal", age: 45 }
hash_item_2 = { location: "Minnesota" }

# add to a hash
hash_item[:location] = "Texas"

# remove from a hash
hash_item.delete(:age)

# retrieve information from a hash
hash_item[:name]

# merge two hashes together
hash_item.merge!(hash_item_2)

# iterating over hashes
hash_item.each { |key, value| puts "info: #{key} is #{value}" }

# pass a hash into a method as the last argument as an optional argument
def say_hello(name, comments={})
  if comments.empty?
    puts "#{name} has no comments"
  else
    puts "#{name} made the following comments: "
    comments.each do |key, val|
      puts "#{val} "
    end
  end
end

say_hello("Hal", idea: "What is happening?", concept: "Where are we going?")

family = {  uncles: ["bob", "joe", "steve"], sisters: ["jane", "jill", "beth"], brothers: ["frank","rob","david"], aunts: ["mary","sally","susan"] }

fam_arr = family.select do |k,v|
  k == :sisters || k == :brothers
end
n_arr = fam_arr.values.flatten!
p n_arr


person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]
p person.has_value?("painting")
