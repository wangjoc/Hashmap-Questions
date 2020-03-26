# Time: O(n) + O(n)
# Space: O(n)

def intersection(list1, list2)
  hash = {}
  intersect = []

  list1.each {|list| hash[list] = list2}

  hash.each do |list1_num, list2|
    intersect << list1_num if list2.include? list1_num
  end

  return intersect
end
