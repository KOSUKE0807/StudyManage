function register_callback() {
  $("#choise-school-ajax-request").on(
      "ajax:complete",
      function(event) {
        var res = event.detail[0].response
        $('#updated_by_ajax').html(res)
      }
  );
}

window.register_callback = register_callback;
