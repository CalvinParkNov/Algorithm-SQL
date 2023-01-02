// Given a sorted array of distinct integers and a target value, return the index
// if the target is found. if not, return the index where it would be if it were inserted in order.
// You must write an algorithm with O(log n) runtime complexity.
// Example 1:

// Input: nums = [1,3,5,6], target = 5
// Output: 2
//  Example 2:

// Input: nums = [1,3,5,6], target = 2
// Output: 1
// Example 3:

// Input: nums = [1,3,5,6], target = 7
// Output: 4

// Constraints:

// 1 <= nums.length <= 104
// -104 <= nums[i] <= 104
// nums contains distinct values sorted in ascending order.
// -104 <= target <= 104

let searchInsert = function(nums, target) {
    let index = 0;
    if(nums.includes(target)){
        index = nums.indexOf(target) 
    }else {
        for(let i=0; i<nums.length;i++){
            if(nums[i] < target){
                index = i + 1;
            }
        }
    }
    return index;
};

//Solution
// 1. check the target integer is duplicated from nums array using include.
// If the result is true, then return the indexOf target.
// 2. If it is false, then using for loops to check the target is greater nums array.
// then return the index of array. (Because the index starts from 0 do not forget to add 1 to inserted into nums array)