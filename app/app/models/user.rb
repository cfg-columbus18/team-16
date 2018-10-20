class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #has_many :message
  has_many :conversations, foreign_key: :id_sender
  has_many :chats, foreign_key: :mentor_id


  def name
  email.split('@')[0]
end
end
