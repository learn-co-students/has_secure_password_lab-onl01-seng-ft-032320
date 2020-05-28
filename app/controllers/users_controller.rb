class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        if @user.password != @user.password_confirmation
            redirect_to '/users/new'
        else
            session[:user_id] = @user.id
        end
    end
     
    private
     
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
