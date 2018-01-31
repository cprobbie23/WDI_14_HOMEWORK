console.log('to the future')

// function myForEach(arr, fn) {
//   for (var i = 0; i < arr.length; i++) {
//     fn(arr[i])
//   }
//   // body...
// }

// var fruits = ['apple', 'lemon', 'banana']

// var putsThing = function (thing){
//   console.log(thing.toUpperCase())
// }
// myForEach(fruits, putsThing)

// var options = {
//   url: 'http://www.omdbapi.com/?apikey=2f6435d9&t=jaws',
//   method: 'get'
// }

// $.ajax(otions).done(function(res){

//   console.log('me me me'); // IOC inversion of control

// })

// for (var i = 0; i < 100; i++) {
//   console.log('look over here')
// }

$('button').click(function () {

  var search = $('input').val()
  var options = {
    url: 'http://www.omdbapi.com/?apikey=2f6435d9&s=' + search,
    method: 'get' // default
  }

  $('.container').children().remove();

  $.ajax(options).done(function(res){
    res.Search.forEach(function(movie){
      var $container = $('.container')

      var $newDivMovie = $('<div>')
      var $newAnchor = $('<a>').attr({
        href: 'http://www.imdb.com/title/' + movie.imdbID,
        target: '_blank'
      });
      var $newH2Movie = $('<h2>').text(movie.Title + " - " + movie.Year)
      var $newMoviePoster = $('<img>').attr('src', movie.Poster)
      $newAnchor.append($newH2Movie).append($newMoviePoster)
      $newDivMovie.append($newAnchor)
      $container.append($newDivMovie)

    })
  })
})