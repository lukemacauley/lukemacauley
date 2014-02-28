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

# $(document).ready(ready)
# $(document).on('page:load', ready)