class UsersController < ApplicationController
	include UsersHelper

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
		@response = Response.where('user_id = ? AND quiz_taken = ?', current_user.id, false)
	end

	def index
		@users = User.all
	end

	def quiz_taken
		Response.update_all({quiz_taken: true}, {id: params[:quiz_taken_ids]})
		redirect_to quizzes_path
	end
end
