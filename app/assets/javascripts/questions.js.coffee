# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

	$('form').on 'click', '.remove_fields', (event) ->
		$(this).prev('input[type=hidden]').val('1')
		$(this).closest('fieldset').hide()
		event.preventDefault()
		
	$('form').on 'click', '.add_fields', (event) ->
		time = new Date().getTime()
		regexp = new RegExp($(this).data('id'), 'g')
		$(this).before($(this).data('fields').replace(regexp, time))

	$('form').on 'click', '.checker', (event) ->
		boxes = $(":checkbox:checked")
		nboxes = $(":checkbox:not(:checked)")
		if boxes.length == 1
			$('.checker_label').hide()
			nboxes.hide()
		if boxes.length == 0
			$('.checker_label').show()
			nboxes.show()



		

