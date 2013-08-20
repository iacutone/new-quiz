$(document).ready ->
	boxes = $(":checkbox:checked")
	nboxes = $(":checkbox:not(:checked)")
	question = $('question').get()
	console.log(question)
	$(':checkbox:checked').click -> 
		

