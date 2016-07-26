// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.remotipart
//= require turbolinks
//= require_tree .

$(function(){
    //$(document).on('ajax:success', '#uploadForm', function(evt, data, status, xhr) {
    //    console.log(data);
    //    conole.log(status);
    //});
    console.log('this is me from app.js ');
    $('#uploadForm')
        .bind('ajax:success', function(evt, data, status, xhr){
            console.log(data);
            conole.log(status);
        })
        .bind('ajax:complete', function(xhr, status){
            console.log(status);
        })
        .bind('ajax:error', function(xhr, data, status){
            console.log(status);
        });
});
