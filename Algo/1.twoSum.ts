// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

function twoSum(nums: number[], target: number) {
    let answer : number[] =[];
    for(let i:number = 0; i <= nums.length; i++){
        for(let j:number = i+1; j<=nums.length; j++){
            if(nums[i] + nums[j] === target){
                answer.push(i,j);
                return answer;
            }
        }
    }
};

let number: number[] = [3,2,4];
let target: number = 6;
console.log(twoSum(number, target))