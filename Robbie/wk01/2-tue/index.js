// Part 1
var name = prompt("What is your name?");
console.log("Hello " + name);

// Part 2 - The Vegan Test
var food = prompt("Please choose one from the menu: Steak, fruit salad, tofurkey, pork chops.");
console.log("You have chosen " + food);

if (food === 'Steak' || food === 'pork chops') {
  console.log("Vegans beware!");
} else if (food === 'fruit salad' || food === 'tofurkey') {
  console.log("This cuisine is vegan friendly.");
} else {
  console.log("Not available");
}


//Fortune Teller
var noOfChildren = 2;
var partnerName = 'KK';
var place = 'Melbourne';
var jobTitle = 'Game Developer';
console.log("You will be a " + jobTitle + " in " + place 
  + ", and married to " + partnerName + " with " + noOfChildren + " kids.");

// The age calculator

var currYear = 2017;
var birthYear = 1988;

var age1 = currYear - birthYear;
var age2 = age1 - 1;
console.log("They are either " + age1 + " or " + age2);

// The Lifetime Supply Calculator
var currAge = 29;
var maxAge = 99;
var amountPerDay = 2;
var total = (maxAge - currAge) * 365 * 2;
console.log("You will need " + total + " to last you until the ripe old age of " + maxAge);

// The Geometrizer
var radius = 10;
var pi = 3.14
var circumference = pi * radius * 2;
circumference = circumference.toFixed(1);
console.log("The circumference is " + circumference);
console.log("The area is " + pi * radius * radius);

//The Temperature Converter
var tempCels = 23;
console.log(tempCels + " °C is " + (tempCels * 9 / 5 + 32) + " °F");

var tempFahren = 78;
console.log(tempFahren + " °F is " + ((tempFahren - 32) * 5 / 9).toFixed(1) + " °C");