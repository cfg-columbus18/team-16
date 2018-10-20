class MatchesController < ApplicationController
  def find

  	User.find_each do |user|

      #only show mentors
      if (user.is_mentor == 1)

        mentor = user
        mentee = current_user


        # TODO update this to match score function
        match_score = score(mentor, mentee)

        # TODO interpret result - add good result to sorted array of users to be displayed
      end
  	end

  end

  def show
  end
end
