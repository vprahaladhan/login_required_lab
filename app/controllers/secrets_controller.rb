class SecretsController < ApplicationController
  def new

  end

  def show
    # return head(:forbidden) unless session.include? :name
    if (session[:name].nil?) then
      redirect_to login_path
    else
      render
    end
  end

end