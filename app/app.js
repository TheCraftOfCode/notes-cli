const fs = require('fs')
// Logo Display
console.log(fs.readFileSync(`${require('os').homedir()}/notes-cli/display/coc.ans`,{encoding: 'utf8'}))



