class SessionsController < ApplicationController

    def new
    end 
    
    def create
        if @user = User.find_by(name: params[:user][:name])
            return head(:forbidden) unless @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to '/'
        else
            flash[:alert] = "Improper credentials entered"
            redirect_to '/sessions/new'
        end
    end 

    def destroy
    end 

end 