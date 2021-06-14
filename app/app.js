const fs = require('fs')

coc = fs.readFileSync(`./display/coc.ans`,{encoding: 'utf8'})
console.log(coc)