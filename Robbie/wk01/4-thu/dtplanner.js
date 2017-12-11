
var start = 'apple'
var stop = 'tomato'

function sliceLine(start, stop) {
  var indexOfStart = lines.fruit.indexOf(start);
  var indexOfStop = lines.fruit.indexOf(stop);

  if (going reverse) {
    return lines.fruit.slice(indexOfStart, indexOfStop + 1)
  } else {
    return lines.fruit.slice(indexOfStart, indexOfStop + 1).reverse() 
  }
}

function calcJourney (start, stop) {

  var lineOfStart = lineOf(start)
  var lineOfStop = lineOf(stop)

  sliceLine(start, stop)
  .join('--->');
}

function logJourney() {
  ['pear', 'tomato'].join(' -> ')
  ['pear -> tomato', 'tomato -> celery']
  //pear -> tomato >>> tomato -> celery
}