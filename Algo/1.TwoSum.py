# Given an array of integers nums and an integer target,
# retrun indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution,
# and you may not use the same element twice
# you can return the answer in any order.

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

class Solution:
    def twoSum(self, nums, target):
       for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            if nums[j] == target - nums[i]:
                return [i,j]

nums = [2, 7, 11, 15]
target = 26
nums1 = [3,2,4]
target1 = 6
nums2 = [3,3]
target2 = 6

sol = Solution()
print(sol.twoSum(nums, target))
print(sol.twoSum(nums1, target1))
print(sol.twoSum(nums2, target2))