console.log('onlineBank.js ready')

var savingsInput = document.querySelector('.sInput');
var checkingInput = document.querySelector('.cInput');
var sBalance = document.querySelector('.sBalance');
var cBalance = document.querySelector('.cBalance');
var sWithdraw = document.querySelector('.sWithdraw');
var cWithdraw = document.querySelector('.cWithdraw');
var sDeposit = document.querySelector('.sDeposit');
var cDeposit = document.querySelector('.cDeposit');

  if (sBalance.textContent == 0) {
  document.querySelector('.savings').style.backgroundColor = "red";
} 
  if (cBalance.textContent == 0) {
  document.querySelector('.checking').style.backgroundColor = "red";
} 


function sAdd(){
  var sum = sBalance.textContent;
  sum = Number(sum) + Number(savingsInput.value);
  sBalance.textContent = sum.toFixed(2);
  if (sBalance.textContent != 0) {
  document.querySelector('.savings').style.backgroundColor = "yellow";
 }
}

function sSubtract(){
  var remain = sBalance.textContent;
  var newRemain = Number(remain) - Number(savingsInput.value);
  if (newRemain > 0) {
  sBalance.textContent = newRemain.toFixed(2);
  } else if (newRemain == 0) {
    sBalance.textContent = newRemain.toFixed(2);
  document.querySelector('.savings').style.backgroundColor = "red";
  } else {
    sBalance.textContent = remain;
  }
}

function cAdd(){
  var sum = cBalance.textContent;
  sum = Number(sum) + Number(checkingInput.value);
  cBalance.textContent = sum.toFixed(2);
  if (cBalance.textContent != 0) {
  document.querySelector('.checking').style.backgroundColor = "lightgreen";
 }
}

function cSubtract(){
  var remain = cBalance.textContent;
  var newRemain = Number(remain) - Number(checkingInput.value);
    if (newRemain > 0) {
    cBalance.textContent = newRemain.toFixed(2);
  } else if (newRemain == 0) {
    document.querySelector('.checking').style.backgroundColor = "red";
    cBalance.textContent = newRemain.toFixed(2);
  } else if (newRemain < 0 && Math.abs(newRemain) <= sBalance.textContent) {
    document.querySelector('.checking').style.backgroundColor = "red";
    sBalance.textContent = (sBalance.textContent - Math.abs(newRemain)).toFixed(2);
    cBalance.textContent = '0.00';

  } else {
    cBalance.textContent = remain;
  }
  return newRemain;
}

sDeposit.addEventListener('click', sAdd);
sWithdraw.addEventListener('click', sSubtract);

cDeposit.addEventListener('click', cAdd);
cWithdraw.addEventListener('click', cSubtract);