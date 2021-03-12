console.log("button_displayページが読み込まれた");

var InitalButtonDisplay = function()  {
  $('#before_start').fadeIn(1500);
  $('#while_studying').hide();
  $('#pause').hide();
  $('#finish').hide();
}

var StartButtonDisplay = function() {
  $('#while_studying').fadeIn(1500);
  $('#before_start').hide();
  $('#pause').hide();
  $('#finish').hide();
}

var StopButtonDisplay = function() {
  $('#pause').fadeIn(1500);
  $('#before_start').hide();
  $('#while_studying').hide();
  $('#finish').hide();
}

var CompleteButtonDisplay = function() {
  $('#finish').fadeIn(1500);
  $('#before_start').hide();
  $('#while_studying').hide();
  $('#pause').hide();
}

window.addEventListener("turbolinks:load", () => {
  InitalButtonDisplay();

  $('#startbtn').click(function() {
    StartButtonDisplay();
  });

  $('#pausebtn').click(function() {
    StopButtonDisplay();
  });

  $('.complete').click(function() {
    CompleteButtonDisplay();
  });

  $('#restartbtn').click(function() {
    StartButtonDisplay();
  });

  $('#resetbtn').click(function() {
    InitalButtonDisplay();
  });

  $("#sharebtn").click(function(){
    console.log("終了")
  });
  
  $('#stillbtn').click(function() {
    StartButtonDisplay();
  });
});


