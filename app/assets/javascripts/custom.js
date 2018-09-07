$(document).on('turbolinks:load', function(){
  if(document.URL.match("/users/sign_in")) {
    $('#log_in_icon').remove();
  }

  $('div[id^=points-container-]').each(function(index, element) {
    $(this).children(".row").filter(':even').css('background', '#e7e7eb');
  });

  $('.visitor-construction:first').css('margin-top', '0');

  $('#mapview').css("height", $(window).height() - 50 + "px");

  $('.menu-trigger').click(function() {
    $(this).toggleClass('active');
    if($(this).hasClass('active')) {
      $('#background-shadow').show();
      $('#hamburger-menu').addClass('active');
    } else {
      $('#background-shadow').hide();
      $('#hamburger-menu').removeClass('active');
    }
  });
});

$(window).on('resize', function(){
  //googlemap用要素の高さをウィンドウサイズに合わせて変更
  $('#mapview').css("height", $(window).height() - 50 + "px");

  //ウィンドウ横幅が広がった時(bootstrap4でいうところのsmになった時)ハンバーガ関連要素を見えなくする
  if($(window).innerWidth() >= 576) {
    $('.menu-trigger').removeClass('active');
    $('#background-shadow').hide();
    $('#hamburger-menu').removeClass('active');
  }
});

$(document).ready(function(){
});