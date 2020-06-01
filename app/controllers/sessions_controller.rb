class SessionsController < ApplicationController
  before_action :user
  def new 
    
  end 

  def create 
    @user = User.find_by(name: params[:name])
    return head(:forbidden) unless params[:password] == @user.password
    session[:user_id] = @user.id
  end 

  def destroy

  end 

  
end
