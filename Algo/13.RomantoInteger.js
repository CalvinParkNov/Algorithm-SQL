// 로마 문자를 숫자로 변경

// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000

// 예를 들어 2는 II.
// 12는 XII이다. X + II
// 27는 XXVII이다. X + X + V + I + I이다.
// 1994년은 MCMXCIV이다. M + C + M

let stringToInt = (s) => {
    const sym = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    }

   let result = 0;
   for (let i=0;i<s.length;i++){
    const current = sym[s[i]];
    const next = sym[s[i+1]];
    if(current < next) {
        result += next - current;
         i++;
        }
    else {
        result += current
    }
   }
    return result;    
}
console.log(stringToInt("MCMXCIV"));