// make a bash function node() that:
// runs this file is not arugement is supplied therefore creating a repl with my functions and variables
// runs regular node if an argument is passed 

const repl = require('repl');

Object.defineProperty(global, 'clear', {get: () => console.clear()})

global.factorial = function (num) {
    if (num === 0) return 1
    return num * factorial(num - 1)
}

repl.start("~> ")
