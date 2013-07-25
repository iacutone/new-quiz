class SessionsController < ApplicationController

	def new
  end

  def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      @quiz = Quiz.new 
      render 'quizzes/new'
    else
      flash.now.alert = "Email or password is incorrect"
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to new_session_url, notice: "Logged out"
  end
end
