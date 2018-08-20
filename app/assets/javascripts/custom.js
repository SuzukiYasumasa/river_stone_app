$(document).on('turbolinks:load', function(){
  if(document.URL.match("/users/sign_in")) {
    $('#log_in_icon').remove();
  }
});
$(document).ready(function(){
});