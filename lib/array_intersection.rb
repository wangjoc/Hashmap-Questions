# Time: O(n) + O(n)
# Space: O(n)

require 'pry'

def intersection(list1, list2)
  hash = {}
  intersect = []

  list1.each {|x| hash[x] = true} 

  list2.each do |y| 
    intersect << y if !hash[y].nil? 
  end

  return intersect
end
