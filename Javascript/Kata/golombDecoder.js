function decoder(sequence) {
    let binary = [];
    let zeroes = [];
    let result = '';
    for (let i=0; i<sequence.length; i++) {
        let sum = sequence[i] + 1;
        binary.push(sum);
        let binaryPlusOne = binary[i].toString(2); 
        let zeroesLength = binaryPlusOne.length - 1; 
        zeroes.push(zeroesLength);
    }console.log(binary);
    for (let j=0; j<zeroes.length; j++) {
        
    }
}
var test1=[1, 2, 3]; test2=[40, 30, 10, 5]; test3=[0, 0, 0, 800, 800, 800, 0, 0, 0];
decoder(test1);
