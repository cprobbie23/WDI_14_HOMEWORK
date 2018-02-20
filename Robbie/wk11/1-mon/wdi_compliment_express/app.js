var express = require('express');
var app = express();
var ejs = require('ejs')
var _ = require('lodash');
const PORT = 8080;

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Shut up and take my money",
  "It's almost beer o'clock",
  "The Force is strong with you",
  "It's two at two",
  "A quick beer and slow ping pong"
]
colors = ["#FFBF00", "#0080FF", "#01DF3A", "#FF0080"]

app.set('views', './views');
app.set('view engine', 'ejs');

app.get('/:name', function (req, res) {
  // res.send('Hey there, how are you today?'); // not needed
  var compliment = _.sample(compliments);
  var color = _.sample(colors);
  res.render('index', {
    compliment,
    color,
    name: req.params.name
  })
});

app.listen(PORT, function () {
  console.log(`listening on port ${PORT}`);
})

