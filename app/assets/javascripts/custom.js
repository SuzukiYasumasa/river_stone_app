$(document).on('turbolinks:load', function(){
  if(document.URL.match("/users/sign_in")) {
    $('#log_in_icon').remove();
  }

  $('div[id^=points-container-]').each(function(index, element) {
    $(this).children(".row").filter(':even').css('background', '#e7e7eb');
  });

  $('.visitor-construction:first').css('margin-top', '0');

  $('#mapview').css("height", $(window).height() - 50 + "px");
});

$(window).on('resize', function(){
  $('#mapview').css("height", $(window).height() - 50 + "px");
});

$(document).ready(function(){
});