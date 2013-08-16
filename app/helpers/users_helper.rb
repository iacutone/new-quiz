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

		@num_correct = 0
		@intersect = @user_choice | @correct_choice
		@intersect.each do |correct|
			if correct == true
				@num_correct += 1
			end
		end
	end
end
