// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  $(":file").filestyle({buttonText: "Escolher arquivo"});
  $('input[type=submit]').attr('disabled', 'disabled');
  $('input[type=file]').on('change', function(){
    if ($(this).val() != '') {
      $('input[type=submit]').removeAttr('disabled');
    }
  });
  setTimeout(function(){
    $(".message").fadeOut();
  }, 4000);

});