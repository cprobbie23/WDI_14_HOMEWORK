var request = require('request');
var city = process.argv[2]
var url = `http://api.openweathermap.org/data/2.5/weather?q=${city}&APPID=${process.env.OPENWEATHER_KEY}`
request(url, function (error,response,body) {
  var absTemp = JSON.parse(body).main.temp;
  var celTemp = (absTemp - 273.15).toFixed(1);
  console.log(celTemp);
})

