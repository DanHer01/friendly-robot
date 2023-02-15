function multiTable(number) {
    let result = '';
    for (let i = 1; i <= 10; i++) {
      result += i + ' * ' + number + ' = ' + (number * i) + '\n';
    }
    return result.substring(0, result.length-1);
  }

// Another solution
const multiTable1 = (number) => {
  let table = '';
  
  for(let i = 1; i <= 10; i++) {
    table += `${i} * ${number} = ${i * number}${i < 10 ? '\n' : ''}`; 
  }

  return table;
}

// Tests
console.log(multiTable1(3));