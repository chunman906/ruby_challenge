#my attempt:

def two_sum(nums, target)
  answer = []
  nums.each_with_index do |num_1, i|
      nums.each_with_index do |num_2, n|
          if num_1 != num_2 && (num_1 + num_2) == target
              answer += [num_1[i - 1], num_2[n -1]]
              return answer
          end
      end
  end
end

# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.



# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
