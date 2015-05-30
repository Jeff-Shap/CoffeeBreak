// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var main = function(){

  $.getScript("https://checkout.stripe.com/checkout.js", function(){

   alert("Script loaded and executed.");


var handler = StripeCheckout.configure({
    key: 'pk_test_6pRNASCoBOKtIshFeQd4XMUh',
    token: function(token) {
    $('#stripeToken').value = token.id;
    $('.stripeEmail').value = token.email;
    }
  });

  $('.form-actions').click(function(e){
    console.log('clicked submit');
      handler.open({
      name: 'CoffeeBreak',
      description: 'coffee delivery',
      amount: '100',
    });
    e.preventDefault();
  });



  });

  $('.profile_options').click(function(){
    selected_prof= $(this).next().text();
    selected_prof2 = parseInt(selected_prof);
    $('#selected_profile_id').val(selected_prof2);
  });

  // $('.form-actions').click(function() {
  //   console.log('click');

  // });

  


};

$(document).ready(main);