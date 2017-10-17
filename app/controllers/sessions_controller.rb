class SessionsController < ApplicationController
  skip_before_action :ensure_login, only:[:new, :create]
  def new
  end

  def create
    reviewer = Reviewer.find_by(name: params[:reviewer][:name])
    password = params[:reviewer][:password]

    if reviewer && reviewer.authenticate(password)
      session[:reviewer_id]=reviewer.id
      redirect_to root_path, notice: "Logged in sucessfully"
    else
      redirect_to login_path, alert: "Invalid username/password"
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "Logout  sucessfully"
  end
end