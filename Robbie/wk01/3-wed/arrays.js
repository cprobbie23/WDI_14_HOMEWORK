// 1.Create an array of the days of the week

var days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

// 2. My calendar says the first day is Sunday...


var sd = days_of_the_week.pop();
days_of_the_week.unshift(sd);


// 3. Create a new array of the days of the week:

var weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
var weekend = ['Saturday', 'Sunday'];
days_of_the_week = [weekdays, weekend];
//var weekdays = days_of_the_week.slice(0, 5);
//var weekend = days_of_the_week.slice(5, 7);

//days_of_the_week = weekdays.concat(weekend);

// 4. Remove either the weekdays or the weekends

days_of_the_week.pop();
days_of_the_week = days_of_the_week[0];

// 5. Sort the remaining days alphabetically
console.log(days_of_the_week.sort());