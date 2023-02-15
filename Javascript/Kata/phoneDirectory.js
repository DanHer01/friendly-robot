function phone(s, n) {
    const arr = s.split(/\n/g);
  
    return arr.reduce((acc,curr,v,arr) => {
      const exactPhoneRegEx = new RegExp(`${n}`, 'g');
      const phoneRegEx = new RegExp(/.?\d?.?\d{2,3}.?\d{3}.?\d{4}/, 'g');
      const nameRegEx = new RegExp(/\<\s?\D+\s?\D{0,}\s?\>/, 'g');
      let retString = '';
      let phoneArr = [];
      let nameArr = [];
      let addrArr = [];
  
      for(let i = 0; i < arr.length; i++) {
        let item = arr[i];
        if (item.match(nameRegEx) && item.match(exactPhoneRegEx)) {
          nameArr.push(item.match(nameRegEx)[0].replace(/\<\s?(\D\s?\D{0,})\s?\>/g, '$1').trim())
          phoneArr.push(item.match(exactPhoneRegEx)[0])
          item = item.replace(phoneRegEx, '');
          item = item.replace(nameRegEx, '');
          addrArr.push(item.replace(/[/$!?*;:,+]+/g, '').trim());
        };
      }
  
      if (!phoneArr.find(p => phoneRegEx.test(p))) return `Error => Not found: ${n}`;
      if (phoneArr.length > 1) return `Error => Too many people: ${n}`;
  
      retString += `Phone => ${phoneArr[0]}, `;
      retString += `Name => ${nameArr[0]}, `;
      retString += `Address => ${addrArr[0]}`.replace(/\_/g, ' ').replace(/\s{2,}/g, ' ');
  
      return retString;
    });
  }

//Tests
var address1 = " 133, Green, Rd. <E Kustur> NY-56423 ;+1-541-914-3010!\n"
var address2 = "/+1-541-754-3010 156 Alphand_St. <J Steeve>\n";
var address3 = "<Anastasia> +48-421-674-8974 Via Quirinal Roma\n";
var address4 = "/+1-541-754-3010 156 Alphand_St. <J Steeve>\n 133, Green, Rd. <E Kustur> NY-56423 ;+1-541-914-3010\n";
var address5 = "+1-541-984-3012 <P Reed> /PO Box 530; Pollocksville, NC-28573\n :+1-321-512-2222 <Paul Dive> Sequoia Alley PQ-67209\n";
var address6 = "<Sophia Loren> +1-421-674-8974 Bern TP-46017\n <Peter O'Brien> High Street +1-908-512-2222; CC-47209\n";

phone(address1, '1-541-914-3010');