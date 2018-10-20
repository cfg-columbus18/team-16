
def ranking (user_mentor, user_mentee)

	time_zone_score = 24-(user_mentor.time_zone-user_mentee.time_zone)

	country_score=0
	city_score=0
	language_score=0
	last_active_score=0
	prefer_phone_score=0
	long_term_goal_score=0
	refugee_score=0


	if user_mentor.country == user_mentee.country
		country_score=30
	else
		country_score=0
	end



	if user_mentor.city == user_mentee.city
		city_score=10
	else
		city_score=10
	end


	if user_mentor.languages == user_mentee.languages
		languages_score=20
	else
		languages_score=0
	end



	if user_mentor.last_active < 14
		last_active_score=50 
	elsif user_mentor.last_active <40
		last_active_score=20   
	elsif user_mentor.last_active < 90
		last_active_score=5
	else
		last_active_score=0
	end


	if user_mentor.prefer_phone==1
		prefer_phone_score=10
	else
		prefer_phone_score=0
	end



	if user_mentor.long_term_goal == user_mentee.long_term_goal
		long_term_goal_score=30
	else
		long_term_goal=0
	end


	if user_mentor.refugee_score > 50
		refugee_score=30
	elsif user_mentor.refugee_score > 20
	  	refugee_score=15
	elsif user_mentor.refugee_score > 3
	  	refugee_score=10
	else refugee_score=3
	end

	#match_score = (country_score)

	match_score = (time_zone_score*30+country_score*10+city_score*30+languages_score*20+last_active_score*20+prefer_phone_score*10+long_term_goal_score*10+refugee_score)/600
	return match_score
	  
end