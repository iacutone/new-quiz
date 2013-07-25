# class Permission < Struct.new(:user)
# 	def allow?(controller, action)
# 		user = User.new
# 		if user.student?
# 			controller == 'quizzes' && action == 'new'
# 		else
# 			true
# 		end
# 	end
# end