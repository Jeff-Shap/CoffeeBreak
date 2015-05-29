// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var main = function(){

  $('.profile_options').click(function(){
    selected_prof= $(this).next().text();
    console.log(selected_prof);
    selected_prof2 = parseInt(selected_prof);
    console.log(selected_prof2)
    $('#selected_profile_id').val(selected_prof2);
  })

};

$(document).ready(main);