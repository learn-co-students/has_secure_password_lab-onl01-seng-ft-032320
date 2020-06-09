class UsersController < ApplicationController
   def new
      @user = User.new
   end

   def create
      @user = User.create(user_params)
      @user.save
      redirect_to new_user_path and return if (@user.password != @user.password_confirmation)
      session[:user_id] = @user.id
      redirect_to login_path
   end

   def show
   end

   private
   def user_params
      params.require(:user).permit(:name,:password,:password_confirmation)
   end
end
