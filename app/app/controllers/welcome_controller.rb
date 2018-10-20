class WelcomeController < ApplicationController

	layout "layout"

  	def index
  		if !user_signed_in?
  			redirect_to "/users/sign_in"
  		else
  			#redirect_to "/user/#{current_user.id}"

  			#if user has relationship, send them to chat page
  			if (Relationship.find_by_id_mentee(current_user.id) == nil && Relationship.find_by_id_mentor(current_user.id) == nil)
              redirect_to "/matches"
            else
              redirect_to "/chat"
            end
  		end
  	end
end
