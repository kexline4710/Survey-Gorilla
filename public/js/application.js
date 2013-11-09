$(document).ready(function() {
// $("#view.forms").hide()
$("forms").click(function(){
  var idToShow = $(this).attr("href");
  $(idToShow).show().siblings(".forms").hide();
  return false;
  });
});
