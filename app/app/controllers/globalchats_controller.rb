class GlobalchatsController < ApplicationController
  def index
        @chats = Globalchat.all
        @chat = Globalchat.new
      end

      def new
        @chat = Globalchat.new
      end

      def create
        @chat = Globalchat.new(Globalchat_params)
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
          params.require(:globalchat).permit(:username, :message)
        end
end
