// Given a string s containing just thee characters 
// '(', ')', '{', '}', '[' and ']',
// determine if the input string is valid

// An input string is valid if:
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.

// Example 1:
// Input: s = "()"
// output: true
// split 문자열을 일정한 구분자로 잘라서 배열로 저장.



const array = [];
s = s.split( "" );
for(let i = 0; i < s.length; i ++){
    if( s[i] === "(" ) array.push( ")" );
    else if( s[i] === "[" ) array.push( "]" );
    else if( s[i] === "{" ) array.push( "}" );
    else if( s.length === 0 || array[array.length - 1] !== s[i] ) return false;
    else array.pop();
}
return array.length === 0;
