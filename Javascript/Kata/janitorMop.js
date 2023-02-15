function theJanitor(word) {
    word = word.toLowerCase();
    let alphabet = "abcdefghijklmnopqrstuvwxyz";
    let zeroIndexArray = []; lastIndexArray = [];
    let x = [];
    for (let aTOz = 0; aTOz < alphabet.length; aTOz++) {
        let indexZero = word.indexOf(alphabet[aTOz]);
        let indexLast = word.lastIndexOf(alphabet[aTOz]);
        if (indexZero >= 0) {zeroIndexArray.push(indexZero)} else zeroIndexArray.push(0)
        if (indexLast >= 0) {lastIndexArray.push(indexLast + 1)} else lastIndexArray.push(0)        
    } 
    for (let i = 0; i <= lastIndexArray.length-1; i++) {
        x.push(lastIndexArray[i] - zeroIndexArray[i]);
    }
    return x;
}

function theJanitor1(word) {
  return [...'abcdefghijklmnopqrstuvwxyz'].map(l=>{
    let a = word.indexOf(l), b = word.lastIndexOf(l);
    return a === -1 ? 0 : b - a + 1;
  });
}
var test1 = "abacaba"; test2 = "likemm"; test3 = "rkuhsxtflzvytbtwxyarsglibmhfmmikyolfmopbtkzxezjahq";
console.log(theJanitor(test3));

