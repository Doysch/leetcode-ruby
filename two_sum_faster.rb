def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    if hash[target - num]
      return [hash[target - num], index]
    else
      hash[num] = index
    end
  end
end

# 1. Make an empty hash
# 2. Iterate through the nums array (with index)
# 3. This may seem a bit strange, but I will talk about the else block first, but hopefully it will become obvious why.
# 4. If there is no key with (target - number) - this is always the case on the first iteraton as hash is empty at this point - then follow the else block. At this point, add the current num as a key with the index of that current num to the hash. Now we have entered out first key-pair value into the hash
# 5. Upon next iteration, if there is a key (num) in the hash with a key of (target - current num), then follow true code block and return an array containing the value of hash (with key of target - current num) and the index of that current num. If there isn't a key of (target - current num) in the hash then follow #4 again, which adds to the hash.
# 6. Upon further interations it will keep evaluating false until there is a previously iterated number which, when added to the current number, evaluates to the target number.
