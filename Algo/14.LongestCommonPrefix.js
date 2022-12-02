// Write a function to find the longest common prefix string amongst an array of strings,
// If there is no common prefix, return an empty string "".

// Input strs = ["flower", "flow", "flight"]
// Output: "fl"

// Input strs = ["dog", "racecar", "car"]
// Output: ""
// Explanation : There is no common prefix among the input strings.

const longestCommonPrefix = function (strs){
    if(!strs.length) {
      return '';
    }
for(let i = 0; i < strs[0].length; i++) {
    for(let s of strs) {
        if(s[i] !== strs[0][i]) {
            return s.slice(0, i);
        }
    }
}
      return strs[0];
}


const arr = ["a,ab"];
console.log(longestCommonPrefix(arr))