$('form').on 'click', '.checker', (event) ->
	boxes = $(":checkbox:checked")
	nboxes = $(":checkbox:not(:checked)")
	if boxes.length == 1
		$('.answer').hide()
		$('.question').hide()
		nboxes.hide()
	if boxes.length == 0
		$('.answer').show()
		$('.question').show()
		nboxes.show()