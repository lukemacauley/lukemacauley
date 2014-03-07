# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

	$(document).on "page:fetch", ->
    $("#loader-overlay").show()

  $(document).on "page:receive", ->
    $("#loader-overlay").hide()

	NProgress.configure showSpinner: false

	$("[href]").each ->
  $(this).addClass "active" if @href is window.location.href

  $(".right li a").click ->
  	$(".full_screen").fadeIn 300

  $(".menu").click ->
  	$(".mobile_nav, .mobile_nav_links").fadeIn 300

  $(".close").click ->
  	$(".full_screen, .mobile_nav").fadeOut 300

  $("#masonry-container").imagesLoaded ->
    $("#masonry-container").masonry
      itemSelector: ".item"
      isFitWidth: true

  Shadowbox.init
    initialHeight: 250
    initialWidth: 250

  $(".product").mouseenter ->
    $(this).find("img").css("-webkit-filter" : "blur(2px)")

  $(".product").mouseleave ->
    $(this).find("img").css("-webkit-filter" : "blur(0px)")

  $(".twitter, .instagram, .facebook").mouseenter ->
    $(this).css("-webkit-filter" : "blur(1px)")

  $(".twitter, .instagram, .facebook").mouseleave ->
    $(this).css("-webkit-filter" : "blur(0px)")

  $(".item").slice(1).mouseenter ->
    $(this).find("img").css("-webkit-filter" : "blur(4px)")

  $(".item").mouseleave ->
    $(this).find("img").css("-webkit-filter" : "blur(0px)")

  $(".social-text, .product-text").flexVerticalCenter()

  $("#slider").find("a.xl-view").click ->
    $(".xl-container").fadeIn 500
    y = $(window).scrollTop()
    $(window).scrollTop y + 13

  $(".xl-container img").click ->
    $(".xl-container").fadeOut 500

  $("#slider").nivoSlider
    effect: "fade" # Specify sets like: 'fold,fade,sliceDown'
    slices: 1, # For slice animations
    boxCols: 1, # For box animations
    boxRows: 1, # For box animations
    animSpeed: 100 # Slide transition speed
    directionNav: true # Next & Prev navigation
    controlNav: false # 1,2,3... navigation
    controlNavThumbs: false # Use thumbnails for Control Nav
    manualAdvance: true # Force manual transitions
    prevText: "<" # Prev directionNav text
    nextText: ">" # Next directionNav text
    randomStart: false # Start on a random slide

# $(document).ready(ready)
# $(document).on('page:load', ready)