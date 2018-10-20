require_relative "ranking"

class MatchesController < ApplicationController
  layout "layout"

  def new
  	relationship = Match.new match_params
  	relationship.save

    redirect_to "/chats"
  end

  def find

    @match_list = User.all

    '''@match_list = array.new    

  	User.find_each do |user|

      #only show mentors
      if (user.is_mentor == 1)

        mentor = user
        mentee = current_user

        # TODO update this to match score function
        match_score = ranking(mentor, mentee)
        @match_list.push(match_score)

        # TODO interpret result - add good result to sorted array of users to be displayed
      end
  	end'''

  end

  def show

  end
end
