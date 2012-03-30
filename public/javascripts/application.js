$(function(){

  $(".off").hover(
    function () {
      $(this).find('.btn').animate({"left": "-=120px"}, "slow");
    }, 
    function () {
      $(this).find('.btn').animate({"left": "+=120px"}, "slow");
    }
  );
  
  $('.small-thumb').each(function() {
    $(this).append('<div class = "grey-overlay"><img src = "/images/portfolio/web/grey_overlay.png"/></div>')
  });
  
  $(".small-thumb").hover(
    function () {
      $(this).find('.grey-overlay').fadeIn(200, function () {
        $(this).show();
      });
    }, 
    function () {
      $(this).find('.grey-overlay').fadeOut(200, function() {
        $(this).hide();
      });
    }
  );
  
  $('.category').each(function() {
    $(this).find("span").click(function() {
      $(this).find('.category-container').slideToggle("slow");
    });
  });
  
});