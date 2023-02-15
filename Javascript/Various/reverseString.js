function reverseString(str) {
    var reversedString = "";
    for (let i = str.length - 1; i >= 0; i--) {
      reversedString += str[i];
    }
    console.log(reversedString);
    return reversedString;  
 }

 // Tests
 reverseString('Don\'t cry babe');