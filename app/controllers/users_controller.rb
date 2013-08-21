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
		@response = Response.where(:user_id == current_user)
	end

	def index
		# @respponses = Response.all
		@users = User.all
    # @stats = Stat.find_all_by_user_id(params[:id]).count
    # @articles = Article.find_all_by_user_id(params[:id]).count
    # @opens = Stat.where("user_id =? AND opens = 1", params[:id]).count
    # @clicks = Stat.where("user_id =? AND clicks = 1", params[:id]).count
	end
end
