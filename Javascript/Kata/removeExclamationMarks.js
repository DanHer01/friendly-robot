function removeExclamationMarks(s) {
    return s.replace(/!/g, '');
  }
// Tests
var myStr = '!!!Hello!!!! !Guys'
console.log(removeExclamationMarks(myStr));