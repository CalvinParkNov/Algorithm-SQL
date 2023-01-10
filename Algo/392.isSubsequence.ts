//Given two string s and t, return true if s is a subsequesnce of t, or false otherwise.

// A subsequence of a strign is a new string that is formed from the original string by deleting some of the characters

// without disturbing the relative positions of the remaining characters.
// i.e., "ace" is a subsequence of "abcde" while "aec" is not

function isSubsequence(s: string, t: string): boolean {
    let i: number = 0;
    let j: number = 0;
    
    if(s.length === 0){
        return true;
    }
    while(i < s.length && j < t.length){
        if(s[i] === t[j]){
            i++
        }
        j++
    }
    return i === s.length ? true : false;
};

let input:string = "abc";

let target:string = "ahbgdc";

console.log(isSubsequence(input, target));

export {};
