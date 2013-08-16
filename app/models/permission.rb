class Permission < Struct.new(:user)
	def allow?(controller, action)
		return true if controller == 'sessions'
		return true if controller == 'users' && action.in?(%w[new create])
		if user
			return true if controller == 'responses' 
			return true if controller == 'users' && action.in?(%w[edit update])
			return true if controller == 'quizzes' && action.in?(%w[show index])
			return true if controller == 'questions' && action.in?(%w[new show index])
			return true if user.teacher?
		end
		false
	end
end