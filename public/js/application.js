$(document).ready(function() {
  newCharacterButtonListener();
  newCharacterFormListener();
  loginListener();
});

var newCharacterButtonListener = function(){
  $("#new-character-button").on("click", function(e){
    e.preventDefault();
    $(".character-form").toggle();
  });
}

var newCharacterFormListener = function(){
  $("#new-character-form").on("submit", function(e){
    e.preventDefault();

    var form = $(this);
    var action = form.attr("action");
    var method = form.attr("method");
    var data = form.serialize();

    // console.log(form)
    // console.log(action)
    // console.log(method)
    // console.log(data)

    var call = $.ajax({
      url: action,
      type: method,
      data: data
    })

    call.done(function(data){
      $("#all-character-cards").prepend(data);
    });

    call.fail(function(){
      $("#errors").text("Character must be named!");
    });
  });
}

var loginListener = function(){
  $("#login").on("click", function(e){
    e.preventDefault();

    var link = $(this)
    var action = link.attr("href")

    var call = $.ajax({
      url: action,
      type: 'GET'
    });

    call.done(function(data){
      link.toggle();
      link.after(data)
    })
  });
}
