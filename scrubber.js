// remove special chars like "❲" and "❳"
function scrubber (s) {
    return decodeURI (s.replace (/❲/g, '').replace (/❳/g, '')).replace (/,]/g,']');
}

let fs = require('fs');
let inp = fs.readFileSync(0, 'utf-8');
let outp = scrubber (inp);
console.log (outp);
