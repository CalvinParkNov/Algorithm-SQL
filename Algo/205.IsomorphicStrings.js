// Given two strings s and t, determine if they are isomorphic.

// Two strings s and t are isomorphic if the characters in s can be replaced to get t.

// All occurrences of a character must be replaced with another character while preserving the order of characters.
// No two characters may map to the same character, but a character may map to itself.

// Example 1:
// Input: s = "egg", t = "add"
// Output: true

// Example 2:
// Input: s = "foo", t = "bar"
// Output: false

// Example 3:
// Input: s = "paper", t = "title"
// Output: true

let isIsomophic = function (s,t){
    if(s.length != t.length){
        return false;
    }
    const word1 = [];
    const word2 = [];
    for(let i=0; i<s.length; i++){
        if(word1[s.charAt(i)] != word2[t.charAt(i)]){
            return false;
        }
        word1[s.charAt(i)] = i++;
        word2[t.charAt(i)] = i++;
    }
    return true;
}
let word = "title";
let word2 = "paper";

console.log(isIsomophic(word,word2));