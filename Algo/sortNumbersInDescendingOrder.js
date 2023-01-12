function sortNumbersInDescendingOrder(nums) {
  let sortedNums = false;
  while (!sortedNums) {
    sortedNums = true;
    for (let i = 1; i < nums.length; i++) {
      if (nums[i] > nums[i - 1]) {
        [nums[i],nums[i-1]] = [nums[i-1], nums[i]]
        sortedNums = false;   
       }
    }
  }
  return nums;
}


const unsortedNums = [2, 3, 1, 6, 4, 5, 10, 9, 8, 7];
const sortedNums = sortNumbersInDescendingOrder(unsortedNums);
console.log(sortedNums)