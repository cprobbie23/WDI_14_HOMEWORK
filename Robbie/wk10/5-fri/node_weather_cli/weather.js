var request = require('request');
var city = process.argv[2]
var url = `http://api.openweathermap.org/data/2.5/weather?q=${city}&APPID=d2a5832ea33005167572b1a51000b744`
request(url, function (error,response,body) {
  var absTemp = JSON.parse(body).main.temp;
  var celTemp = (absTemp - 273.15).toFixed(1);
  console.log(celTemp);
})

