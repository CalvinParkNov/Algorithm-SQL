// Given an array of integers nums, calculate the pivot index of this array.

// The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right

// If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left.
// This also applies to the right edge of the array.
// Return the leftmost pivot index. If no such index exists, return -1.

// Example 1:

// Input: nums = [1,7,3,6,5,6]
// Output: 3
// Explanation:
// The pivot index is 3.
// Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
// Right sum = nums[4] + nums[5] = 5 + 6 = 11
// Example 2:

// Input: nums = [1,2,3]
// Output: -1
// Explanation:
// There is no index that satisfies the conditions in the problem statement.
// Example 3:

// Input: nums = [2,1,-1]
// Output: 0
// Explanation:
// The pivot index is 0.
// Left sum = 0 (no elements to the left of index 0)
// Right sum = nums[1] + nums[2] = 1 + -1 = 0


// Solve the question in REACTO method.

// Repeat the question untill clearly understand the question.

// Example the question, pivot index starts from 0. If left sum and right sum are the same return the index.
// then we have to sum up all the arrays for the first time

let pivotIndex = function(nums){
    // we can use two different method to sum up the arrays
    // 1. using for loops
    // 2. using reduce method
    const initialValue = 0;
    let pivot = 0
    let totlaValue = nums.reduct((a,b) => a + b, initialValue);
    let leftSum = 0;
    let rightSum = 0;
    //then finds out what is the pivot index via for loops.
    for(pivot; pivot<anums.length;pivot++){
        rightSum = totlaValue - leftSum - nums[pivot]
        // if left sum and right sum is equal then return the pivot index
        if(leftSum === rightSum){
            return pivot;
        } 
        //if they are not equal move pivot to right side then sum up the left and right.
        leftSum += nums[pivot];
    }
    //if nothing then return -1;
    return -1;
    
}