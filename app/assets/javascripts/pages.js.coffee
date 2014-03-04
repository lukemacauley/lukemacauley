# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

	$(document).on "page:fetch", ->
    $("#loader-overlay").show()

	$(document).on "page:load", ->
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
    $(this).find(".product-overlay").show()
    $(this).find(".product-overlay").css("background-color" : "rgba(255,255,255,0.5)")
    $(this).find(".product-text").show()

  $(".product").mouseleave ->
    $(this).find("img").css("-webkit-filter" : "blur(0px)")
    $(this).find(".product-overlay").hide()
    $(this).find(".product-overlay").css("background-color" : "rgba(0,0,0,0)")
    $(this).find(".product-text").hide()

  $(".twitter, .instagram, .facebook").mouseenter ->
    $(this).css("-webkit-filter" : "blur(1px)")

  $(".twitter, .instagram, .facebook").mouseleave ->
    $(this).css("-webkit-filter" : "blur(0px)")

  $(".item").slice(1).mouseenter ->
    $(this).find("img").css("-webkit-filter" : "blur(4px)")
    $(this).find(".item-overlay").show()
    $(this).find(".item-overlay").css("background-color" : "rgba(255,255,255,0.6)")
    $(this).find(".social-text").show()

  $(".item").mouseleave ->
    $(this).find("img").css("-webkit-filter" : "blur(0px)")
    $(this).find(".item-overlay").hide()
    $(this).find(".item-overlay").css("background-color" : "rgba(0,0,0,0)")
    $(this).find(".social-text").hide()

  $(".social-text, .product-text").flexVerticalCenter()

# $(document).ready(ready)
# $(document).on('page:load', ready)