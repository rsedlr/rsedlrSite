$(function() {
  var $text = $(".textAnim");
  $("#titleDiv").on("mouseover", function() {
    $text.removeClass('animForward');
    window.setTimeout(function() {
      $text.addClass('animBack');
    }, 1);
  })
  $text.on("animationend", function() {
    if ($text.hasClass('animBack')) {
      $text.removeClass('animBack');
      $text.addClass("invis");
      window.setTimeout(function() {
        $text.removeClass("invis");
        $text.addClass('animForward');
      }, 1);
    }
  });
});

