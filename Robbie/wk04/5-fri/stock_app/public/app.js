var change = document.querySelector('#chg')
var changeP = document.querySelector('#chgP')

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