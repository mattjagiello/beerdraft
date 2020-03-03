class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception

  def new
  end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:username] || params[:username].empty?
    session[:username] = params[:username]
    redirect_to user_path(:username)
  end

  def destroy
    session.delete :username
  end

end
