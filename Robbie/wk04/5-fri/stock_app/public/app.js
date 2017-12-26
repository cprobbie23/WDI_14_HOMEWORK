var change = document.querySelector('#chg')
var change1 = document.querySelector('#chg1')
var changeP = document.querySelector('#chgP')
var changeP1 = document.querySelector('#chgP1')

if (Number(change.textContent) > 0 ) {
  document.querySelector(".right p").style.color = "green"
} else if (Number(change.textContent) < 0 ) {
  document.querySelector(".right p").style.color = "red"
}
if (Number(changeP.textContent) > 0 ) {
  change.style.color = "green"
} else if (Number(changeP.textContent) < 0 ) {
  change.style.color = "red"
}

if (Number(change1.textContent) > 0 ) {
  document.querySelector("#p1").style.color = "green"
} else if (Number(change1.textContent) < 0 ) {
  document.querySelector("#p1").style.color = "red"
}
if (Number(changeP1.textContent) > 0 ) {
  change1.style.color = "green"
} else if (Number(changeP1.textContent) < 0 ) {
  change1.style.color = "red"
}