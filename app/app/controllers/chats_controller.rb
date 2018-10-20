
 class ChatsController < ApplicationController
      def index
        @chats = Chat.all
        @chat = Chat.new
      end

      def new
        @chat = Chat.new
      end

      def create
        if user_signed_in?
          redirect_to "/users/sign_in"
          return
        end


        @chat = Chat.new(chat_params)
        @user = current_user
        current_user.username = current_user.id
        @chat.sender_id = current_user.id
        if current_user.is_mentor
          @chat.mentor_id = current_user.id
          @chat.mentee_id = Relationship.find_by_id_mentor(current_user.id).id_mentee
        else
          @chat.mentee_id = current_user.id
          @chat.mentor_id = Relationship.find_by_id_mentee(current_user.id).id_mentor
        end

        respond_to do |format|
          if @chat.save
            format.html { redirect_to @chat, notice: 'Message was successfully posted.' }
            format.json { render :show, status: :created, location: @chat }
          else
            format.html { render :new }
            format.json { render json: @chat.errors, status: :unprocessable_entity }
          end
        end
      end

      private
        def chat_params
          params.require(:chat).permit(:username, :message)
        end
    end