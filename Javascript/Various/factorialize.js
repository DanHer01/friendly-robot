function factorialize(num) {
     
    for (var i=1; num>0; num--) {
        i *= num;
    }
    console.log(i);
    return i;

  }
  
  factorialize(20);