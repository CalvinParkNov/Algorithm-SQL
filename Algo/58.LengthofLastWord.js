// Given a string s consisting of words and spaces, return the length of the last word in the string.

// A word is a maximal 
// substring
//  consisting of non-space characters only.


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