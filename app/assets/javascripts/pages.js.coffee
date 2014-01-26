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
  $(this).addClass "active"  if @href is window.location.href


	$(".product_link").hover (->
  	$(".product_background").css("display" : "block")
	), ->
  	$(".product_background").css("display" : "none")

$(document).ready(ready)
$(document).on('page:load', ready)