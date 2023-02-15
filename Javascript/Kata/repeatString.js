function repeatStr(n, str) {
    let repeat = '';
    while (n > 0) {
        repeat += str
        n--;
    }
    return repeat;
}
console.log(repeatStr(6, 'I'));

function repeatStr2(n, s) {return s.repeat(n)}
console.log(repeatStr2(4, 'Heya'));