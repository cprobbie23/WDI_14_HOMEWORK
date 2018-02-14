
var reducer = (sum, num) => sum + Number(num);
process.argv.splice(0,2)
var sum = process.argv.map(Number).reduce(reducer)
console.log(sum)

