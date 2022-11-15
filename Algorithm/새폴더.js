// New Folder를 생성한다. arrFolder안에 이미 New Folder가 있으므로 New Folder를 입력할시 N+1이 되어야 한다.
// 예) ["New Folder", "New Folder (1)", "New Folder (2)"] => ["New Folder", "New Folder (1)", "New Folder (2)", "New Folder (3)"];
// 단 arrFolder에 ["New Folder", "New Folder (1)", "New Folder (4)"]일경우 없는 폴더명을 찾아 폴더 값을 찾아야 한다.
// 예) ["New Folder", "New Folder (1)", "New Folder (2)", "New Folder (3)", "New Folder (4)"]; New Folder (2), New Folder (3)이 추가 되었다
// 입력받는 값이 New Folder가 아닐경우 arrFolder에 추가하면 된다.
// 예) "새폴더"를 입력할 시 => [ 'New Folder', 'New Folder (1)', 'New Folder (4)', '새폴더' ]
// 마지막으로 폴더명을다 넣으면 정렬을 하면 된다.
const arrFolder = ["New Folder", "New Folder (1)", "New Folder (4)"];

function solution(arr, string) {
  //check missing number
  const numbers = [];
  const missing = [];

  //정규식 숫자만 가져오기
  arr.forEach((element) => {
    const result = element.replace(/[^0-9]/g, "");
    if (result) {
      numbers.push(parseInt(result));
    }
  });

  let diff = numbers[0];
  let N = numbers.length;

  // const missing = [];
  for (let i = 0; i < N; i++) {
    // Check if diff and arr[i]-i
    // both are equal or not
    if (numbers[i] - i != diff) {
      // Loop for consecutive
      // missing elements
      while (diff < numbers[i] - i) {
        missing.push(i + diff);
        diff++;
      }
    }
  }

  //check if the input string is included in the array.
  arr.forEach((element) => {
    if (element.includes(string)) {
      if (missing.length !== 0) {
        for (let i = 0; i < missing.length; i++) {
          arr.push(`${string} (${missing[i]})`);
        }
      }
      arr.push(`${string} (${N + 1})`);
    } else {
      arr.push(string);
    }
  });
  const answer = new Set([...arr]);
  return [...answer].sort(function (a, b) {
    const valueOfKeyA = a.toUpperCase();
    const valueOfKeyB = b.toUpperCase();
    return valueOfKeyA.localeCompare(valueOfKeyB, "en", {
      numeric: true,
      sensitivity: "base",
    });
  });

  //after comparing numbers. The array of missing is [2,3]
  //then we will compare if the folders are exists?
}

console.log(solution(arrFolder, "새폴더"));
