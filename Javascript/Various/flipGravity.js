//Arrange arr in L or R gravity
let testArr = [3, 3, 2, 1, 5, 5, 6, 4];
const flip = (d, a) => {
    let sort = [];    
    if (d == 'R') {
        sort.push(a.sort((a, b)=>a-b));
    } else if (d == 'L') {
        sort.push(a.sort().reverse());
    }
    return sort;
}

console.log(flip('R', testArr));