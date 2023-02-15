function findLongestWordLength(str) {
    var strArr = str.split(" ");
    var longestWord = 0;
    for (var i = 0; i < strArr.length; i++) {
      if (strArr[i].length > longestWord) {
          longestWord = strArr[i].length;
      }
    }
    alert(longestWord);
    return longestWord;
  }
  
  findLongestWordLength("The quick brown fox jumped over the lazy dog");