// First floor is ground aka 0
// Turn American lvl to European lvl
// No 13th floor on American
function getRealFloor(n) {
    if (n < 1) {
        return n;
    } if (n == 1) {
        return 0;
    } if (n > 13) {return n -= 2}
    else return n -= 1;
}

// Alternate solutions
function getRealFloor2(n) {
    return n > 13 ? n - 2 : n > 0 ? n - 1 : n;
  }

// Tests
console.log(getRealFloor(2));

