class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			session[:user_id] = @user.id
			@quiz = Quiz.new
			render 'quizzes/new'
		else 
			render :new
		end
	end

	def show
		@responses = Response.all
	end

	def index
	end
end
