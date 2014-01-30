# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	$(document).on "page:fetch", ->
  NProgress.start()

	$(document).on "page:change", ->
	  NProgress.done()

	$(document).on "page:restore", ->
	  NProgress.remove()

	NProgress.configure showSpinner: false

	$("[href]").each ->
  $(this).addClass "active" if @href is window.location.href

  $(".right li a").click ->
  	$(".full_screen").fadeIn 300

  $(".footer").hover (->
  	$("#subfooter").slideDown 300
  	), ->
  	$('#subfooter').slideUp 300

  $(".menu").click ->
  	$(".mobile_nav, .mobile_nav_links").fadeIn 300

  $(".close").click ->
  	$(".full_screen, .mobile_nav").fadeOut 300

$(document).ready(ready)
$(document).on('page:load', ready)