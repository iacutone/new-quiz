class ResponsesController < ApplicationController

	def new
		@quiz = Quiz.find(params[:quiz_id])
		@responses = Response.new
	end

	def create
		@responses = (params[:response])
		@responses.each_slice(4) do |a|
			@response = Response.new(
				binding.pry
			# :quiz_id => a[0],
			# :user_id => a[1],
			# :question_id => a[2],
			# :answer_id => a[3],
			)
			@response.save
		end

		
		render :show
	end

	def show
		@response = Response.find(params[:id])
	end

	def index
		@responses = Response.all
	end
end

# [7/30/13 2:21:12 PM] Blake Johnson: params[:responses]
# [7/30/13 2:21:18 PM] Blake Johnson: that should be an array
# [7/30/13 2:21:20 PM] Blake Johnson: s
# [7/30/13 2:21:20 PM] Blake Johnson: of response
# [7/30/13 2:21:30 PM] Blake Johnson: params[:responses].each do |response|
# [7/30/13 2:21:38 PM] Blake Johnson: Response.new(params[:response])
# [7/30/13 2:22:05 PM] Blake Johnson: what is the actual response
# [7/30/13 2:22:15 PM] Blake Johnson: what question is the response associated with
# [7/30/13 2:22:20 PM] Blake Johnson: and which user is taking the quiz
# [7/30/13 2:22:54 PM] Blake Johnson: question
# [7/30/13 2:22:56 PM] Blake Johnson: one answer

#   @article = Article.new(
#   :huff_link => huff_link,
#   :huff_title => huff_title,
#   :nytimes_link => nytimes_link,
#   :nytimes_title => nytimes_title,
#   :fox_link => fox_link,
#   :fox_title => fox_title,
#   :nypost_link => nypost_link,
#   :nypost_title => nypost_title
#   )

#   @article.save
# end

