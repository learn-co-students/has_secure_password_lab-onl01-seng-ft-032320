class UsersController < ApplicationController
 
    
    def home
    end

    def new

    end

    def create 
        @user = User.new(user_params)
        if @user.password != @user.password_confirmation
            redirect_to signup_path
        else
            @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        end
    end
     
    private
    
    def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
