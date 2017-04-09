$(document).ready(function() {
  newCharacterButtonListener();
  newCharacterFormListener();
  loginListener();
  weaponsLinkListener();
  armorsLinkListener();
  classesLinkListener();
});

var newCharacterButtonListener = function(){
  $(".new-character-button").on("click", function(e){
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
      form.trigger("reset");
      $(".character-form").toggle();
      $(".weapons-page").hide();
      $(".armors-page").hide();
      $(".character-classes-page").hide();
    });

    call.fail(function(){
      $("#errors").find("ul").append("<li>Character must be named!</li>");
    });
  });
}

var loginListener = function(){
  $("#login").on("click", function(e){
    e.preventDefault();

    var link = $(this);
    var action = link.attr("href");

    var call = $.ajax({
      url: action,
      type: 'GET'
    });

    call.done(function(data){
      link.toggle();
      link.after(data);
    });
  });
}

var weaponsLinkListener = function(){
  $("body").on("click", ".weapons-link", function(e){
    e.preventDefault();

    var link = $(this);
    var action = link.attr("href");

    var call = $.ajax({
      url: action,
      type: 'GET'
    });

    call.done(function(data){
      link.toggle();
      link.closest("form").after(data);
    });
  });
}

var armorsLinkListener = function(){
  $("body").on("click", ".armors-link", function(e){
    e.preventDefault();

    var link = $(this);
    var action = link.attr("href");

    var call = $.ajax({
      url: action,
      type: 'GET'
    });

    call.done(function(data){
      link.toggle();
      link.closest("form").after(data);
    });
  });
}

var classesLinkListener = function(){
  $("body").on("click", ".classes-link", function(e){
    e.preventDefault();

    var link = $(this);
    var action = link.attr("href");

    var call = $.ajax({
      url: action,
      type: 'GET'
    });

    call.done(function(data){
      link.toggle();
      link.closest("form").after(data);
    });

    call.fail(function(){
      console.log("Failed")
    })
  });
}
