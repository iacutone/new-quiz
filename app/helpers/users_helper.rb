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
		@compare = @user_choice.zip(@correct_choice)
		@compare.each do |choice|
			if choice[0] == true && choice[1] == true
				@num_correct += 1
			end
		end
	end
end
