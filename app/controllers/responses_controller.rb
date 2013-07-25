class ResponsesController < ApplicationController

	def new
		# @user = User.find(params[:user_id])
		@quiz = Quiz.find(params[:quiz_id])
		@response = Response.new
	end

	def create
		@response = Response.new(params[:response])
		if @response.save
      render :show
    else
      render :new
    end
	end

	def show
		@response = Response.find(params[:id])
	end

	def index
		@responses = Response.all
	end
end
