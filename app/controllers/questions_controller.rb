class QuestionsController < ApplicationController

	def new
		@quiz = Quiz.find(params[:quiz_id])
		@question = @quiz.questions.build
		@answer = @question.answers.build
		@answer.save
	end

	def create
		@question = Question.new(params[:question])
		if @question.save
      redirect_to @question.quiz
    else
      render :new
    end
	end

	def show
		@question = Question.find(params[:id])
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy
		redirect_to @question.quiz
	end
end
