module QuizzesHelper

	def can_take(quiz)
		@quiz_taken = []
		@show_quiz_responses = false
		quiz.responses.each do |response|
			@quiz_taken << response.quiz_taken
			if @quiz_taken.first == true && response.user_id == current_user.id
				@show_quiz_responses = true
			end
		end
	end
end
