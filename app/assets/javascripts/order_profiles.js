// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// var main = function product_select() {

//   $('#choose-business').onchange = function() {
//     console.log('change')};

// }

// $(document).ready(main);



//Grabs business_id when business is chosen from drop-down
// var main = function product_options() {
//   $('#biz-select').change(function() {
//   selected_business_id = $(this).val();
//   console.log(selected_business_id);

// });
// };

// var main = function() {
//   $('.bizbutton').click(function() 
//     { console.log('click');
//     $(this).next.toggle();
//   });
// };

// var main = function() {
//   $('.selected_product').click(function() 
//     { console.log($(this).next().val())};
//     );
// };


var main = function(){

  $('.selected_product').click(function(){

    var printMe = $(this).next().val();

    console.log(printMe);

  })

};

$(document).ready(main);