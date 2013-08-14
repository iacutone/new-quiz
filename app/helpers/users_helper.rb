module UsersHelper
	
	def score(data)
		@data = data
		@number_of_questions = @data.size
		@user_choice = []
		@correct_choice = []
		@data.each do |response|
			@user_choice << response.answer_choice
			@correct_choice << response.choice
		end 
	end

	def grade(questions, num_correct)
		
	end

end
