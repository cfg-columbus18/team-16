class GlobalchatsController < ApplicationController
  def index
        @chats = GlobalChat.all
        @chat = GlobalChat.new
      end

      def new
        @chat = GlobalChat.new
      end

      def create
        @chat = GlobalChat.new(chat_params)
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
        def Globalchat_params
          params.require(:chat).permit(:username, :message)
        end
end
