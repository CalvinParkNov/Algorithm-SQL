//Given two string s and t, return true if s is a subsequesnce of t, or false otherwise.

// A subsequence of a strign is a new string that is formed from the original string by deleting some of the characters

// without disturbing the relative positions of the remaining characters.
// i.e., "ace" is a subsequence of "abcde" while "aec" is not

let isSubsequence = function (s,t){
    if(s.length === 0){
        return true;
    }
    let i = 0;
    let j = 0;
    while(i < s.length && j < t.length){
        if(s[i] === t[j]){
         i++;
        }
        j++
    }
    if(i === s.length){
        return true;
    }
    return false;
}


let input = "abc"
let word = "ahbgdc"
console.log(isSubsequence(input, word))