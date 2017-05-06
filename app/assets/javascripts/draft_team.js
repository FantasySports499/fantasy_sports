// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $( "#drop_zone" ).droppable({
      drop: function( event, ui ) {
        var dropItem = $(this).attr("href");
        $(dropItem).after("<tr>" + ui.draggable.html() + "</tr>");
      }
    });
  $('tbody').sortable().disableSelection();
})
