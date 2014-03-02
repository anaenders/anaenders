linkify = (text) -> 
  exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gi
  text.replace(exp,"<a href='$1' target='_blank'>$1</a>")

$ ->
  # Main navigation
  $('nav a').each ->
    match = false
    if window.location.pathname is $(@).attr('href')
      match = true
    else if $(@).attr('href') != '/'
      match = window.location.pathname.match $(@).attr('href')
    $(@).addClass(if match then 'on' else 'off')
  
  # Dots divider for skills titles
  $('.alt').each -> $(this).append '<div><img src = "/images/about/dots.jpg"/></div>'
  
  # Hover for portfolio thumbnails
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

    $(".slide" + currentSlide).fadeIn(500)
    $(".slide" + prevSlide).fadeOut(500)

    setTimeout((-> mySlideshow(nextSlide)), 6000)

  mySlideshow(1)

  # Vertical toggle for category sections in resume  
  $('.category').each ->
    cat = $(this)
    cat.find("span").click -> cat.find('.category-container').slideToggle "slow"
    
  # Skills chart on off hover animation  
  $('figure div').hover(
    -> $(this).siblings('label').addClass 'on',
    -> $(this).siblings('label').removeClass 'on'
  )
  
  $('figure label').hover(
    -> $(this).siblings('div').addClass 'on',
    -> $(this).siblings('div').removeClass 'on'
  )
  
  # Slide animation for work experience tiles
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
    
