// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//= require jquery3
//= require popper
//= require bootstrap-sprockets
(function($) {
'use strict';
$(function() {
var todoListItem = $('.todo-list');
var todoListInput = $('.todo-list-input');
$('.todo-list-add-btn').on("click", function(event) {
event.preventDefault();

var item = $(this).prevAll('.todo-list-input').val();

if (item) {
todoListItem.append("<li>
    <div class='form-check'><label class='form-check-label'><input class='checkbox' type='checkbox' />" + item + "<i class='input-helper'></i></label></div><i class='remove mdi mdi-close-circle-outline'></i>
</li>");
todoListInput.val("");
}

});

todoListItem.on('change', '.checkbox', function() {
if ($(this).attr('checked')) {
$(this).removeAttr('checked');
} else {
$(this).attr('checked', 'checked');
}

$(this).closest("li").toggleClass('completed');

});

todoListItem.on('click', '.remove', function() {
$(this).parent().remove();
});

});
})(jQuery);