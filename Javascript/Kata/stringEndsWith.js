function solution(str, ending){
    for (let i = 1; i <= ending.length; i++) {
        if (ending[ending.length - i] !== str[str.length - i]) return false;
    }
    return true;
  }
//Alternate Solutions
function solution2(str, ending){
  return str.endsWith(ending);
}
//Tests
console.log(solution2('ahello', 'allo'));
