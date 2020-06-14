class UsersController < ApplicationController


    def index
    end

    def new
        @user = User.new
    end 


    def create
        #binding.pry
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to "/users"
        else
            redirect_to "/signup"
        end
    end
    
    private
 
    def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
    end
end