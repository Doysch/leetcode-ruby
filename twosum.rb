# 🤓 challenge here https://leetcode.com/problems/two-sum/

def two_sum(nums, target)
  arr =[]
  nums.each_with_index do |num, i|
    nums.each_with_index do |num, j|
      if (nums[i] + nums[j] == target) && j > i
        return [i, j]
      end
    end
    arr
  end
end

# 1. Iterate through the nums array with index, against the same array with index
# 2. Check whether the sum of two of the elements add up to target
# 3. AND that the indices are different i.e. they're not the same index
# 4. Return the indices of both numbers in an array
