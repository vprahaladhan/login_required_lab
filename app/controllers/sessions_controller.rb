class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:index]

  def new

  end

  def create
    if (params[:name].nil? || params[:name].strip.length == 0) then
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    session.delete :name if !session[:name].nil?
  end

end