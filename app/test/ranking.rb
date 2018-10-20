 
class User
	def initialize(username, is_mentor, time_zone, country, city, languages, last_active, prefer_phone, long_term_goal, refugee_score)
		@username=username
		@is_mentor=is_mentor
		@time_zone=time_zone
		@country=country
		@city=city
		@languages=languages
		@last_active=last_active
		@prefer_phone=prefer_phone
		@long_term_goal=long_term_goal
		@refugee_score=refugee_score

	end

	def time_zone
		return @time_zone
	end

	def username
		return @username
	end

	def country
		return @country
	end

	def city
		return @city
	end

	def languages
		return @languages
	end

	def last_active
		return @last_active
	end

	def prefer_phone
		return @prefer_phone
	end

	def long_term_goal
		return @long_term_goal
	end

	def refugee_score
		return @refugee_score
	end
end

#auser = User.new
user_mentor1 = User.new(username="res",is_mentor=1, time_zone=3, country=9, city=3, languages=5, last_active=10, prefer_phone=1, long_term_goal=1, refugee_score=45)
user_mentee1 = User.new(username="rand",is_mentor=0, time_zone=6, country=7, city=5, languages=5, last_active=3, prefer_phone=1, long_term_goal=1, refugee_score=45)




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
	end


	if user_mentor.city == user_mentee.city
		city_score=10
	end


	if user_mentor.languages == user_mentee.languages
		languages_score=30
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
	end


	if user_mentor.long_term_goal == user_mentee.long_term_goal
		long_term_goal_score=30
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


#aranking = Ranks.new
#puts aranking.ranking(is_mentor=0, name=5, bio=1, phone=10, email=10, city=10, jurisdiction=10, country=10, time_zone=10, languages=5, prefer_phone=9, prefer_email=8, prefer_skype=3, prefer_google_hangout=2, prefer_facebook=3, prefer_whatsapp=2, prefer_viber=4, refugees_sponsored=3,long_term_goal=2)
puts ranking(user_mentor1, user_mentee1)