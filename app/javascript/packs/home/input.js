$(document).on('turbolinks:load', function() {
  var school_input = document.getElementById("school-input");
  var goal_input = document.getElementById("goal-input");
  $('#choise-school-submit').css('display','none');
  $('#goal-submit').css('display','none');

  function inputDisplayOn(input, submit){
    $(input).css('background-color','#F0F0F0');
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
  $('#goal-edit').click(function() {
    goal_input.disabled = false;
    inputDisplayOn('#goal-input', '#goal-submit');
  });
  $('#goal-submit').click(function() {
    inputDisplayOff('#goal-input', '#goal-submit');
  });
})