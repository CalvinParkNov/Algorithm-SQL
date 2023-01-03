// Given a string s consisting of words and spaces, return the length of the last word in the string.

// A word is a maximal 
// substring
//  consisting of non-space characters only.


// Runtime 104 ms
// Memeory 41.9 MB 
let lengthOfLastWord = function(s) {
    let words = s.split (" ");
    let wordLength;
    words.forEach(element => element)
    for(let i=0; i<words.length;i++){
        if(words[i] !== ""){
            wordLength = words[i].length
        }
    }
    return wordLength;
};

console.log(lengthOfLastWord("   fly me   to   the moon  "));


// Runtime 92 ms
// Memory 41.7 MB
let lengthOfLastWord1 = function (s){
    s = s.trim().split(" ");
    return s[s.length-1].length;
}

console.log(lengthOfLastWord1("   fly me   to   the moon  "));
