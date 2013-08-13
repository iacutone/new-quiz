class ResponsesController < ApplicationController

	def new
		@quiz = Quiz.find(params[:quiz_id])
		@responses = Response.new
		# @results = @responses.results.build
	end

	def create
		@responses = (params[:response])
		@responses.each_slice(7) do |attr|
			@response = Response.new(
			 :quiz_id => attr[0],
			 :user_id => attr[1],
			 :question_id => attr[2],
			 :answer_id => attr[3],
			 :response_question => attr[4],
			 :response_answer => attr[5],
			 :answer_choice => attr[6]
			)
			@response.save
		end
		redirect_to responses_path
	end

	def index
		@responses = Response.all
	end

	def update
		@responses = Response.find(params[:id])
		if @responses.update_attributes(params[:response])
			redirect_to responses_path
		else
			render :edit
		end
	end

	def answer
		Response.update_all({choice: true}, {id: params[:choice_ids]})
		redirect_to user_path(current_user)
	end

end


