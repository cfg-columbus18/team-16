class WelcomeController < ApplicationController

	layout "layout"

  	def index
  		if !user_signed_in?
  			redirect_to "/users/sign_in"
  		else
  			redirect_to "/user/#{current_user.id}"
  		end
  	end
end
