const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
  });
   
  readline.question('Enter the radio or the vector magnitude:', name => {
    
    console.log(`Hey there ${name}!`);
    readline.close();
  });