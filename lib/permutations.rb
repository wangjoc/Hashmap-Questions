# Time: O(n) 
# Space: O(n)

def permutations?(string1, string2)
  letter_count(string1) == letter_count(string2)
end

def letter_count(string)
  hash = {}

  string.chars.each do |letter|
    (hash[letter].nil?) ? hash[letter] = 1 : hash[letter] += 1
  end

  return hash
end