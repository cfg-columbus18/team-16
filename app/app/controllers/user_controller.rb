class UserController < ApplicationController
  def edit
  end

  def update
  	u = current_user
  	u.name = params[:name]
  	u.bio = params[:bio]
  	u.phone = params[:phone]
  	u.city = params[:city]
  	u.jurisdiction = params[:jurisdiction]
  	u.country = params[:country]
  	u.time_zone = params[:time_zone]
  	u.languages = params[:languages]
  	u.prefer_phone = params[:prefer_phone].to_i
  	u.prefer_email = params[:prefer_email].to_i
  	u.prefer_skype = params[:prefer_skype].to_i
  	u.prefer_google_hangout = params[:prefer_google_hangout].to_i
  	u.prefer_facebook = params[:prefer_facebook].to_i
  	u.prefer_viber = params[:prefer_viber].to_i
  	u.refugees_sponsored = params[:refugees_sponsored].to_i
  	u.save
  end

  def show
  	if !user_signed_in?
  	  redirect_to "/users/sign_in"
  	else
      @user = current_user
  	end
  end
end
