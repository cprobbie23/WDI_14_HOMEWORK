var select = document.querySelector("#city-type"); 
var options = ["NYC", "SF", "LA", "SYD", "ATX"]; 

for(var i = 0; i < options.length; i++) {
  var opt = options[i];
  var el = document.createElement("option");   // this is to add DOM objects to a web page
  el.textContent = opt;
  el.value = opt.toLowerCase();
  select.appendChild(el);
}

function changeBackground(){
  document.querySelector("body").classList = []
  if (select.value !== "Select a City") {
    document.querySelector("body").classList.add(select.value)
    prev_select = select
  }
}

select.addEventListener('change', changeBackground)