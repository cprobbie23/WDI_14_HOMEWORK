function getStrength(password) {
  var points = 0;
  if (password.match(/[a-z]/g)){
    points++;
  } 
  if (password.match(/[A-Z]/g)) {
    points++;
  } 
  if (password.length >= 8){
    points++;
  } 
  if (password.match(/[0-9]/g)) {
    points++;
  } 
  if (password.match(/\W/g)) {
    points++;
  }
  console.log(points)

  if (points === 0) {
    return 'weak'
  } else if (points === 1) {
    return 'better'
  } else if (points === 2) {
    return 'good'
  } else if (points === 3) {
    return 'nice'
  } else if (points === 4) {
    return 'strong'
  } else if (points === 5) {
    return 'solid'
  }
}

module.exports = getStrength