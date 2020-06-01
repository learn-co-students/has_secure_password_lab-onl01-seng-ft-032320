class UsersController < ApplicationController
    def index
        @user = User.find_by(name: params[:name])
    end

    def new
        
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            render :'index'
        else
            redirect_to new_user_path
        end
    end

    def show
        render :index
    end

    private
 
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
