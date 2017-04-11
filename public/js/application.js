$(document).ready(function() {
  newCharacterButtonListener();
  newCharacterFormListener();
  loginListener();
  formLinkListeners();
});

// ajax fetch the form with new character button and put it in the div.
// deal with toggling/fetching and making sure they don't stack up

var formLinkListeners = function() {
  weaponsLinkListener();
  armorsLinkListener();
  classesLinkListener();
}

var newCharacterButtonListener = function(){
  $(".new-character-button").on("submit", "#new-character-button", function(e){
    e.preventDefault();
    var formDiv = $(".character-form")
    if(formDiv.children().length === 0){
      //ajax
      fetchCharacterForm($(this));
    }else{
      formDiv.toggle();
    }
  });
}

var fetchCharacterForm = function(form){
  var action = form.attr("action");
  var method = form.attr("method")

  var call = $.ajax({
    url: action,
    type: method
  })

  call.done(function(data){
    $(".character-form").append(data)
  })

  call.fail(function(response){
    console.log(response)
    console.log("FAILURE")
  })
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
      removeCards();
      showCardLinks();
    });

    call.fail(function(){
      $("#errors").find("ul").append("<li>Character must be named!</li>");
    });
  });
}

var showCardLinks = function(){
  $(".weapons-link").show();
  $(".armors-link").show();
  $(".classes-link").show();
}

var removeCards = function(){
  $(".weapons-page").remove();
  $(".armors-page").remove();
  $(".character-classes-page").remove();
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

    call.fail(function(){
      console.log("Failed");
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

    call.fail(function(){
      console.log("Failed");
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

    call.fail(function(){
      console.log("Failed");
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
      console.log("Failed");
    });
  });
}
