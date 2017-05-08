// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require ckeditor/init
//= require_tree .
function blinker() {
    $('.blink_me').fadeOut(500);
    $('.blink_me').fadeIn(500);
}

setInterval(blinker, 1000); //Runs every second

$(document).ready(function() {
    $(window).scroll(function() {

        console.log($(window).scrollTop());

        if ($(window).scrollTop() > 600) {
            $('.navbar-index').addClass('navbar-fixed-top');
        }

        if ($(window).scrollTop() < 601) {
            $('.navbar-index').removeClass('navbar-fixed-top');
        }
    });
});
