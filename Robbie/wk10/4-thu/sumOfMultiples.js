var number = Number(process.argv[2])
var numberArr = []
for (var i = 1; i < number + 1; i++) {
  if (i % 3 === 0) {
    numberArr.push(i);
  } else if (i % 5 === 0 ){
    numberArr.push(i);
  }
}

var sum = function (sum, num) {
  return sum += num;
}

console.log(numberArr.reduce(sum))