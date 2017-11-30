//PT Planner Project

var alamein_line = ['Flinders Street', 'Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie'];

var glen_Waverley_line = ['Flagstaff', 'Melbourne Central', 'Parliament', 'Richmond', 'Kooyong', 'Tooronga'];

var sandringham_line = ['Southern Cross', 'Richmond', 'South Yarra', 'Prahran', 'Windsor'];

console.log('Alamein line: ' + alamein_line.toString());
console.log('Glen Waverley line: ' + glen_Waverley_line.toString());
console.log('Sandringham line: ' + sandringham_line.toString());
console.log('');

var origin =  prompt('Please enter your origin station:');
var destination = prompt('Please enter your destination station:');
console.log('origin: ' + origin);
console.log('destination: ' + destination);
console.log('');

// A function to find the index of any stations
var indexFinder = function (stopName,lineArray){
    return lineArray.indexOf(stopName);
}
// A function to find the line of any stations
var lineFinder = function(stopName){

  if (indexFinder(stopName, alamein_line) !== -1){
    return alamein_line;

  } else if (indexFinder(stopName, glen_Waverley_line) !== -1){
    return glen_Waverley_line;

  } else if (indexFinder(stopName, sandringham_line) !== -1) {
    return sandringham_line;

  }
}

var originIndex = indexFinder(origin, lineFinder(origin));
var destinationIndex = indexFinder(destination, lineFinder(destination));

//A function to calculate the journeys on the same train line.
var sameLine = function (stopName, index1, index2) {
    if (originIndex < destinationIndex) {
     journeyArray = lineFinder(stopName).slice(index1, index2 + 1);
  } else if (originIndex > destinationIndex){
     journeyArray = lineFinder(stopName).slice(index2, index1 + 1).reverse();
  }
  return journeyArray;
}

/// This whole block is for Richmond
if (origin === 'Richmond') {
   originIndex = indexFinder(origin, lineFinder(destination));
   var journeyArray = sameLine (destination, originIndex, destinationIndex);

} else if (destination === 'Richmond'){
   destinationIndex = indexFinder(destination, lineFinder(origin));
   var journeyArray = sameLine (origin, originIndex, destinationIndex); 
}
/////////////////////////////////////////
while (origin !== 'Richmond' && destination !== 'Richmond'){
if (lineFinder(origin) == lineFinder (destination) ){
   var journeyArray = sameLine (origin, originIndex, destinationIndex); 
  
} else {
    var oTranIndex = lineFinder(origin).indexOf('Richmond');
    var dTranIndex = lineFinder(destination).indexOf('Richmond');

    if (originIndex < oTranIndex && dTranIndex < destinationIndex) {
    var journeyArray = lineFinder(origin).slice(originIndex, oTranIndex + 1).concat(lineFinder(destination).slice(dTranIndex + 1, destinationIndex + 1));
  } else if (originIndex > oTranIndex && dTranIndex > destinationIndex){
    var journeyArray = lineFinder(origin).slice(oTranIndex, originIndex + 1).reverse().concat(lineFinder(destination).slice(destinationIndex, dTranIndex).reverse());
  } else if (originIndex < oTranIndex && dTranIndex > destinationIndex) {
    var journeyArray = lineFinder(origin).slice(originIndex, oTranIndex + 1).concat(lineFinder(destination).slice(destinationIndex + 1, dTranIndex + 1).reverse());
  } else if (originIndex > oTranIndex && dTranIndex < destinationIndex){
    var journeyArray = lineFinder(origin).slice(oTranIndex, originIndex + 1).reverse().concat(lineFinder(destination).slice(dTranIndex + 1, destinationIndex + 1));
  } 
}
  break;
}


var journeyStr = journeyArray.join('----->');
console.log(journeyStr);
console.log ((journeyArray.length - 1) + ' stops total');
