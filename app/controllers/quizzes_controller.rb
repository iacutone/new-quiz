class QuizzesController < ApplicationController

	def new
		@quiz = Quiz.new
		# @question = @quiz.questions.build
		# @question.quiz_id = @quiz.id
		# @answer = @question.answers.build
		# @question.save
		# @answer.save
		question = @quiz.questions.build
		4.times { question.answers.build }
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
		@quzzes = Quiz.all
	end

	def edit
		@quiz = Quiz.find(params[:id])
	end
end
