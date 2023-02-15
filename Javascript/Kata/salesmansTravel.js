// zipcode:street and town,street 
// and town,.../house number,house number,...

function travel(str, zipcode) {
    let addresses = str.split(',');
    let zipcodeRegex = new RegExp(zipcode);
    let numberRegex = /^\d+/;
    let result = '';

    for (let i = 0; i < addresses.length; i++) {
        let newArr = addresses[i].split(' ');
        let zipcodeMatch = addresses[i].match(zipcodeRegex);
        let numberMatch = addresses[i].match(numberRegex);
        if (zipcodeMatch) {
            result += newArr.join(' ');
        }

    }
    console.log(result);
}

var myStr = '123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432';
var myZip = 'OH 43071'

travel(myStr, myZip);