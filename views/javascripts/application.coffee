linkify = (text) -> 
  exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gi
  text.replace(exp,"<a href='$1' target='_blank'>$1</a>")

$ -> 
  $(".off").hover(
    -> 
      $(this).find('.btn').animate "left": "-=110px", 300
    , -> 
      $(this).find('.btn').animate "left": "+=110px", 200
  )
  
  
  $('.alt').each -> $(this).append '<div><img src = "/images/about/dots.jpg"/></div>'
  
  $('.small-thumb').each -> $(this).append '<div class = "grey-overlay"><img src = "/images/portfolio/grey_overlay.png"/></div>'
  
  $(".small-thumb").hover(
    (-> $(this).find('.grey-overlay').fadeIn 100, -> $(this).show()),
    (-> $(this).find('.grey-overlay').fadeOut 100, -> $(this).hide())
  )
  
  $('#slides').slides(
    preload: true
    preloadImage: '../images/about/btns/loading.gif'
    play: 3000
    pause: 100
    hoverPause: true
    effect: 'fade'
    crossfade: true
    slideSpeed: 350
    fadeSpeed: 500
  )
  
  $('.category').each ->
    cat = $(this)
    cat.find("span").click -> cat.find('.category-container').slideToggle "slow"
  
  
  if $('.twitter-feed').size() > 0
    tweetTemplate = _.template $('#tweet-template').html()
    $('.twitter-feed').html ''
    $.getJSON 'http://api.twitter.com/1/statuses/user_timeline.json?callback=?',
      { screen_name: 'anaenders', count: 15 },
      (data) ->
        $('.twitter-feed').html ''
        _(data).each (tweet) ->
          $('.twitter-feed').append tweetTemplate(
            text: linkify(tweet.text)
            time: Date.create(tweet.created_at).relative()
            from: tweet.source
          )
  
  
  $('figure div').hover(
    -> $(this).siblings('label').addClass 'on',
    -> $(this).siblings('label').removeClass 'on'
  )
  
  
  $('figure label').hover(
    -> $(this).siblings('div').addClass 'on',
    -> $(this).siblings('div').removeClass 'on'
  )
  
  
  $('#next').click ->
      $('.slide_tiles_container').animate { left: '-=208', }, 500, -> 
        $('.next_container').fadeOut "300"
        $('.prev_container').fadeIn "300"
      false
  
  
  $('#previous').click -> 
      $('.slide_tiles_container').animate { left: '+=208' }, 500, -> 
        $('.prev_container').fadeOut "300"
        $('.next_container').fadeIn "300"
      false