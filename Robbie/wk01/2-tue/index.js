var name = prompt("What is your name?");
console.log("Hello " + name);

var food = prompt("Please choose one from the menu: Steak, fruit salad, tofurkey, pork chops.");
console.log("You have chosen " + food);

if (food === 'Steak' || food === 'pork chops') {
  console.log("Vegans beware!");
} else if (food === 'fruit salad' || food === 'tofurkey') {
  console.log("This cuisine is vegan friendly.");
} else {
  console.log("Not available");
}