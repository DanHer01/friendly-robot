function rgb(r, g, b) {
    let result = '';
    let rHex = r.toString(16); gHex = g.toString(16); bHex = b.toString(16);
    if (rHex<=0) {result+='00'} else if (r>255) {result+='FF'} else if (rHex.length == 1) {result+='0'+rHex} else result+=rHex;
    if (gHex<=0) {result+='00'} else if (g>255) {result+='FF'} else if (gHex.length == 1) {result+='0'+gHex} else result+=gHex;
    if (bHex<=0) {result+='00'} else if (b>255) {result+='FF'} else if (bHex.length == 1) {result+='0'+bHex} else result+=bHex;
    return result.toUpperCase();
}
//Clever solution below (idkwtf is d)
function rgb1(r, g, b){
    return toHex(r)+toHex(g)+toHex(b);
  }
  
function toHex(d) {
      if(d < 0 ) {return "00";}
      if(d > 255 ) {return "FF";}
      return  ("0"+(Number(d).toString(16))).slice(-2).toUpperCase()
  }
rgb(0, 0, 0);
rgb(0, 0, -20);
rgb(300,255,255);
rgb(173,255,47);
rgb(300,1,25);

/*
let result = '';
    if (r < 0) {result += '00'}
    if (g < 0) {result += '00'} 
    if (b < 0) {result += '00'} 
    if (r > 255) {result += 'FF'}
    if (g > 255) {result += 'FF'}
    if (b > 255) {result += 'FF'}
*/