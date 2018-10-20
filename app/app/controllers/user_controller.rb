class UserController < ApplicationController
  def edit
  end

  def update
  end

  def show
  	if !user_signed_in?
  	  redirect_to "/users/sign_in"
  	else
      @user = current_user
  	end
  end
end
