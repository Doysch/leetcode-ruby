# 🤓 challenge here https://leetcode.com/problems/two-sum/

# def two_sum(nums, target)
#   arr =[]
#   nums.each_with_index do |num, i|
#     nums.each_with_index do |num, j|
#       if (nums[i] + nums[j] == target) && j > i
#         return [i, j]
#       end
#     end
#     arr
#   end
# end

# 1. Iterate through the nums array with index, against the same array with index
# 2. Check whether the sum of two of the elements add up to target
# 3. AND that the indices are different i.e. they're not the same index
# 4. Return the indices of both numbers in an array

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
      if hash.key?(target - num)
        return [hash[target - num], index]
      else
        hash[num] = index
      end
    end
end

p two_sum([2,7,11, 15], 18)
# output: [1,2]

# 1. Make an empty hash
# 2. Iterate through the nums array with index
# 3. If there is an element (num) in the hash with a key of target - that num,
# then return an array containing the value of hash with key of target - num
# and the index of that num
# 4. If there is no key with target - number (always true on first iteraton as hash
# is empty at this point), then add the num as a key with the inedex of that num
# as the value
