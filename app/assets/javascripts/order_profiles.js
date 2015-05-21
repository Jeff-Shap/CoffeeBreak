// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// var main = function product_select() {

//   $('#choose-business').onchange = function() {
//     console.log('change')};

// }

// $(document).ready(main);




var main = function product_options() {
  $('#choose-business').change(function() {
  selected_business_id = $(this).val();
  console.log(selected_business_id);
  });
};

$(document).ready(main);


