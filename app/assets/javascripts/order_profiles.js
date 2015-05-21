// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// var main = function product_select() {

//   $('#choose-business').onchange = function() {
//     console.log('change')};

// }

// $(document).ready(main);



//Grabs business_id when business is chosen from drop-down
var main = function product_options() {
  $('#choose-business').change(function() {
  selected_business_id = $(this).val();
  console.log(selected_business_id);
  
  });
};

var main2 = function product_business_id() {
  $('#choose-product').change(function() {
  selected_product_business_id = $(this).val();
  console.log(selected_product_business_id);
  });
};

$(document).ready(main);
$(document).ready(main2);

jQuery(document).ready(function () {
        $('select[data-option-dependent=true]').each(function (i) {
            var observer_dom_id = $(this).attr('id');
            var observed_dom_id = $(this).data('option-observed');
            var url_mask = $(this).data('option-url');
            var key_method = $(this).data('option-key-method');
            var value_method = $(this).data('option-value-method');
            var prompt = $(this).has('option[value=]').size() ? $(this).find('option[value=]') : $('<option value=\"\">').text('Select a specialization');
            var regexp = /:[0-9a-zA-Z_]+:/g;
            var observer = $('select#' + observer_dom_id);
            var observed = $('#' + observed_dom_id);

            if (!observer.val() && observed.size() > 1) {
                observer.attr('disabled', true);
            }
            observed.on('change', function () {
                observer.empty().append(prompt);
                if (observed.val()) {
                    url = url_mask.replace(regexp, observed.val());
                    $.getJSON(url, function (data) {
                        $.each(data, function (i, object) {
                            observer.append($('<option>').attr('value', object[key_method]).text(object[value_method]));
                            observer.attr('disabled', false);
                        });
                    });
                }
            });
        });
    });