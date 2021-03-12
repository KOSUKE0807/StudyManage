document.addEventListener("turbolinks:load", function () {
  var timer = document.getElementById('timer');
  var submitTime = document.getElementById('submit-time');

  var StartTime = 0;
  var PauseTime = 0;

  var  Stopwatch = (function () {
    function DisplayTime() {
      var h = Math.floor(ElapsedTime / 3600000);
      var m = Math.floor(ElapsedTime / 60000);
      var s = Math.floor(ElapsedTime % 60000 / 1000);

      h = ('0' + h).slice(-2); 
      m = ('0' + m).slice(-2);
      s = ('0' + s).slice(-2);

      timer.textContent = h + ':' + m + ':' + s;
      submitTime.value = h + ':' + m + ':' + s;
    }
    return {
      CountUp: function () {
        timeoutId = setTimeout(function(){
          ElapsedTime = Date.now() - StartTime + PauseTime;
          DisplayTime();
          Stopwatch.CountUp();
        },10);
      },
      CountStop: function () {
        clearTimeout(timeoutId);
        PauseTime += Date.now() - StartTime; 
      },
      CountReset: function () {
        ElapsedTime = 0;
        PauseTime = 0;
        DisplayTime();
      }
    }
  }());

  $('.startbtn').click(function() {
    StartTime = Date.now()
    Stopwatch.CountUp()
  });
  $('#pausebtn').click(function() {
    Stopwatch.CountStop()
  });
  $('.complete').click(function() {
    Stopwatch.CountStop()
  });
  $('#resetbtn').click(function() {
    Stopwatch.CountReset()
  });
});