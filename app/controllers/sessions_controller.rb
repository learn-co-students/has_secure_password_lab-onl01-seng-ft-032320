class SessionsController < ApplicationController 
    def new 
        # this is for the form 
        @user = User.new
    end 
    
    
    #where the magic happens
    def create 
        @user = User.find_by(name: params[:user][:name])
        if @user
            return head(:forbidden) unless @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user.id)

        else 
            redirect_to new_user_path
        end 
    end 


    def destroy
        session.delete :user_id
        redirect_to new_user_path
    end 
end 