$(function() {
  $("button#see_references").click(function(event) {
    event.preventDefault();
    $('#references_list').show();
    $('#see_references').hide();
    $('#hide_references').show();
  });

  $("button#hide_references").click(function(event) {
    event.preventDefault();
    $('#references_list').hide();
    $('#see_references').show();
    $('#hide_references').hide();
  });
});
