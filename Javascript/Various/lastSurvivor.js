// remove letters from coords
function lastSurvivor(letters, coords) {
    while (coords.length != 0) {
    letters = letters.slice(0, coords[0]) + letters.slice(coords[0] + 1);
    coords.shift();
    }
    return letters;
}

var testStr = 'Hello';
var testArr = [0, 1, 2];
console.log(lastSurvivor(testStr, testArr));
