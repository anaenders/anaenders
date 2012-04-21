function linkify(text) {
    var exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gi;
    return text.replace(exp,"<a href='$1' target='_blank'>$1</a>"); 
}

$(function(){
  
  $(".off").hover(
    function () {
      $(this).find('.btn').animate({"left": "-=120px"}, "slow");
    }, 
    function () {
      $(this).find('.btn').animate({"left": "+=120px"}, "slow");
    }
  );
  
  $('.alt').each(function() {
    $(this).append('<div><img src = "/images/about/dots.jpg"/></div>')
  });
  
  $('.small-thumb').each(function() {
    $(this).append('<div class = "grey-overlay"><img src = "/images/portfolio/grey_overlay.png"/></div>')
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
    var cat = $(this);
    cat.find("span").click(function() {
      cat.find('.category-container').slideToggle("slow");
    });
  });
  
  if ($('.twitter-feed').size() > 0) {
    var tweetTemplate = _.template($('#tweet-template').html());
    $('.twitter-feed').html('');
    $.getJSON(
      'http://api.twitter.com/1/statuses/user_timeline.json?callback=?',
      { screen_name: 'anaecarter', count: 15 },
      function(data) {
        $('.twitter-feed').html('');
        _(data).each(function(tweet) {
          $('.twitter-feed').append(tweetTemplate({
            text: linkify(tweet.text),
            time: Date.create(tweet.created_at).relative(),
            from: tweet.source
          }));
        });
      }
    );
  }
  
  $('figure div').hover(
    function() {
      $(this).siblings('label').addClass('on');
    },
    function() {
      $(this).siblings('label').removeClass('on');
    }
  );
  
  $('figure label').hover(
    function() {
      $(this).siblings('div').addClass('on');
    },
    function() {
      $(this).siblings('div').removeClass('on');
    }
  );
  
  
});
