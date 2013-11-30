linkify = (text) -> 
  exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gi
  text.replace(exp,"<a href='$1' target='_blank'>$1</a>")

$ ->
  $('nav a').each ->
    if window.location.href.match $(@).attr('href') + "$"
      $(@).addClass 'on'
    else
      $(@).addClass 'off'
  
  $('.alt').each -> $(this).append '<div><img src = "/images/about/dots.jpg"/></div>'
  
  $('.small-thumb').each -> $(this).append '<div class = "grey-overlay"></div>'
  
  $(".small-thumb").hover(
    (-> $(this).find('.grey-overlay').fadeIn 100, -> $(this).show()),
    (-> $(this).find('.grey-overlay').fadeOut 'fast', -> $(this).hide())
  )

  # Home page slideshow
  mySlideshow = (currentSlide) ->

    prevSlide = currentSlide - 1
    nextSlide = currentSlide + 1
      
    if prevSlide == 0
      prevSlide = 19

    if nextSlide == 20
      nextSlide = 1

    $(".slide" + currentSlide).fadeIn(3000)
    $(".slide" + prevSlide).fadeOut(3000)

    setTimeout((-> mySlideshow(nextSlide)), 3000)

  mySlideshow(1)

  
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
    
