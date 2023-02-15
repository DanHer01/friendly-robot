
function pofi(n) {
    //Return power of i
    if (n === 0) {return '1'}
    else if (n === 1) {return 'i'}
    else if (n === 2) {return '-1'}
    else if (n === 3) {return '-i'} 
    else if (n > 3) {
        let rem = 0;
        rem += n % 4;
        if (rem === 0) {return '1'}
        else if (rem === 1) {return 'i'}
        else if (rem === 2) {return '-1'}
        else if (rem === 3) {return '-i'} 
    } 
}
function pofi2(n){
    switch (n%4) {
      case 0: return '1'
      case 1: return 'i'
      case 2: return '-1'
      case 3: return '-i'
    }
  }
function pofi3(n){
    return ["1","i","-1","-i"][n%4];
  }
console.log(pofi3(1));