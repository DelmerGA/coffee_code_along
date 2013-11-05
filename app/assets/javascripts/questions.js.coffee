$ ->
	console.log $("#question_text")
	$('input[name="commit"]').click (event) ->
		event.preventDefault()
		console.log $('#question_text').val()
		
		# Here we grab the text_field 
		# and we store as variable $text
		$text = $('#question_text')
		
		# now we insert the value into a hash called question
		question = { text: $text.val() }
		
		# Make a post request with the question that was submitted
		$.post( "/questions", {question: question}).done (data) ->
            console.log data
            $("#questions").prepend("<div>" + data["question"]["text"] + "<br>" + data["answer"]["text"] + "</div>") 
          