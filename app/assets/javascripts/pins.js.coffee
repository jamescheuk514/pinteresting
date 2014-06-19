# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $('#pins-container').imagesLoaded ->
    $('#pins-container').masonry
      itemSelector: '.box'
      isFitWidth: true

  $('#pins-container').infinitescroll ->
  	navselector: '#page-nav'
  	nextselector: '#page-nav a'
  	itemSelector: '.box'
  	loading: {
  		finishedMsg: 'No more pins to load.'
  		img: 'http://i.imgur.com/6RMhx.gif'
  	}
