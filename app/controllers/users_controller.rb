class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			@quiz = Quiz.new
			render 'quizzes/new'
		else 
			render :new
		end
	end
end