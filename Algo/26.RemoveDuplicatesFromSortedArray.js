// Given an ineger array nums sorted in non-decreasing order,
// remove the duplicaes in-plac such that each unique element appears only once.
// The relative order of the elements should be kept the same.


let insertIndex = 1;
for(let i = 1; i < nums.length; i++){
    // We skip to next index if we see a duplicate element
    if(nums[i - 1] != nums[i]){  
        /* Storing the unique element at insertIndex index and incrementing
           the insertIndex by 1 */
        nums[insertIndex] = nums[i];  
        insertIndex++; 
    }
}
return insertIndex;