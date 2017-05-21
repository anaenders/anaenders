linkify = (text) ->
  exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/gi
  text.replace(exp,"<a href='$1' target='_blank'>$1</a>")

$ ->
  # Dots divider for skills titles
  $('.alt').each -> $(this).append '<div><img src = "/images/about/dots.jpg"/></div>'

  # Home page slideshow
  mySlideshow = (currentSlide) ->

    prevSlide = currentSlide - 1
    nextSlide = currentSlide + 1

    if prevSlide == 0
      prevSlide = 17

    if nextSlide == 18
      nextSlide = 1

    $(".slide" + currentSlide).fadeIn(500)
    $(".slide" + prevSlide).fadeOut(500)

    setTimeout((-> mySlideshow(nextSlide)), 8000)

  mySlideshow(1)

  # Slide animation for work experience tiles
  $('#next').click ->
    $('.resume-jobs-container').animate { left: '-=208', }, 500, ->
      $('.next_container').fadeOut "300"
      $('.prev_container').fadeIn "300"
    false

  $('#previous').click ->
    $('.resume-jobs-container').animate { left: '+=208' }, 500, ->
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