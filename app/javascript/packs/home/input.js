$(document).on('turbolinks:load', function() {
  var school_input = document.getElementById("school-input");
  $('#choise-school-submit').css('display','none');

  function inputDisplayOn(input, submit){
    $(input).css('background-color','#3366FF');
    $(submit).css('display','');
  }
  function inputDisplayOff(input, submit){
    $(input).css('background-color','');
    $(submit).css('display','none');
  }

  $('#choise-school-edit').click(function() {
    school_input.disabled = false;
    inputDisplayOn('#school-input', '#choise-school-submit');
  });
  $('#choise-school-submit').click(function() {
    inputDisplayOff('#school-input', '#choise-school-submit');
  });
})