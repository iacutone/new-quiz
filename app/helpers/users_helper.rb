module UsersHelper
	
	def score(data)
		@data = data
		@user_choice = []
		@correct_choice = []
		@num_questions = []
		@data.each do |response|
			@user_choice << response.answer_choice
			@correct_choice << response.choice
			@num_questions << response.question_id
		end
		@i = 0
		@user_choice.each do |num|
			@correct_choice.each do |correct|
				if num == true && correct == true
					@i += 1
				end
			end
		end
	end
end
