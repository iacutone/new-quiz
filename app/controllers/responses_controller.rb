class ResponsesController < ApplicationController

	def new
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
end
