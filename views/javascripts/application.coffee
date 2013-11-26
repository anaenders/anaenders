linkify = (text) -> 
  exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gi
  text.replace(exp,"<a href='$1' target='_blank'>$1</a>")

$ -> 
  $(".off").hover(
    -> 
      $(this).find('.btn').animate "bottom": "+=32px", 300
    , -> 
      $(this).find('.btn').animate "bottom": "-=32px", 200
  )
  
  $('.alt').each -> $(this).append '<div><img src = "/images/about/dots.jpg"/></div>'
  
  $('.small-thumb').each -> $(this).append '<div class = "grey-overlay"><img src = "/images/portfolio/grey_overlay.png"/></div>'
  
  $(".small-thumb").hover(
    (-> $(this).find('.grey-overlay').fadeIn 100, -> $(this).show()),
    (-> $(this).find('.grey-overlay').fadeOut 100, -> $(this).hide())
  )

  # Home page slideshow
  
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

  # Scroll button

  triggerHeight = 100
  win = $(window).height()

  $(window).on("scroll resize", () ->
    top = $(window).scrollTop()
    resized = $(window).height()
    diff = 0

    if top > triggerHeight            
      $(".scroll").fadeIn("slow")
    else
      $(".scroll").hide()
  )

  $(".scroll").on("click", () ->
    $(document).find("html,body").animate({ "scrollTop" : "0" }, "slow")
  )
    
