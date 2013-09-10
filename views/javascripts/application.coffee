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
    hoverPause: false
    effect: 'fade'
    crossfade: true
    slideSpeed: 350
    fadeSpeed: 500
  )
  
  $('.category').each ->
    cat = $(this)
    cat.find("span").click -> cat.find('.category-container').slideToggle "slow"
    
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