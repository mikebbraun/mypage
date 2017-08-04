class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])

    return render action: 'new' unless @user

    session[:user_id] = @user.id

    redirect_to posts_path
  end

end
