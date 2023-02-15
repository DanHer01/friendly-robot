function firstNonConsecutive(arr) {
    for (let i = 0; i < arr.length - 1; i++) {
      if (arr[i] + 1 !== arr[i + 1]) {
        return arr[i + 1]
      }
    }
    return null
  }

// Tests
var arr1 = [1, 2, 3, 4, 5, 7, 8, 9, 11];
var arr2 = [-8, -7, -6, -5, -4, -3, -2, -1, 0, 1];
console.log(firstNonConsecutive(arr1));