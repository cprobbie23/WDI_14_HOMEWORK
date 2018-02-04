console.log('to the future')

var counter = 1;

$('button').click(function () {
  var search = $('input').val()
  var options = {
    url: 'http://api.giphy.com/v1/gifs/search?q=' + search + '&api_key=jR2zkAkHXkoOmqarzbtBc42x2qLLGz97&limit=10',
    method: 'get' // default
  }

  $('.container').children().remove();

  $.ajax(options).done(function(res){
    res.data.forEach(function(gif){     
      var $container = $('.container')
      var $newGif = $('<img>').attr('src', gif.images.fixed_height.url)
      $container.append($newGif)
    })
  })
})



$(window).scroll(function() {
  if($(window).scrollTop() + $(window).height() == $(document).height()) {
    var search = $('input').val()
    var options = {
    url: 'http://api.giphy.com/v1/gifs/search?q=' + search + '&api_key=jR2zkAkHXkoOmqarzbtBc42x2qLLGz97&limit=10&offset=' + counter * 10,
    method: 'get' // default
    };
    counter++;
    $.ajax(options).done(function(res){
    res.data.forEach(function(gif){     
      var $container = $('.container')
      var $newGif = $('<img>').attr('src', gif.images.fixed_height.url)
      $container.append($newGif)
      })
    })
  }
});
