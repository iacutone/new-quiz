class QuizzesController < ApplicationController
	def new
		@quiz = Quiz.new
	end

	def create
		@quiz = Quiz.new(params[:quiz])
		if @quiz.save
      render :show
    else
      render :new
    end
	end

	def update
		@quiz = Quiz.find(params[:id])
    if @quiz.update_attributes(params[:quiz])
      redirect_to @quiz
    else
      render :edit
    end
	end

	def show
		@quiz = Quiz.find(params[:id])
	end

	def index
		@quizzes = Quiz.all
	end

	def edit
		@quiz = Quiz.find(params[:id])
	end

	def destroy
		@quiz = Quiz.find(params[:id])
		@quiz.destroy
		redirect_to quizzes_path
	end
end
