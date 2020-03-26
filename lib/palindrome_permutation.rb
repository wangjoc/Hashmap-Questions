# Time: O(n) + O(n)
# Space: O(n)

def palindrome_permutation?(string)
  hash = {}
  odd_count = 0

  string.chars.each do |letter|
    (hash.keys.include? letter) ? hash[letter] += 1 : hash[letter] = 1
  end

  hash.each do |letter, count|
    odd_count += 1 if count % 2 == 1
  end

  return odd_count <= 1
end