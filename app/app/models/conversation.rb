class Conversation < ApplicationRecord

	has_many :message, dependant: :destroy
	belongs_to :sender, foreign_key: :id_sender, class_name: User
	belongs_to :recipient, foreign_key: :recipient_id, class_name: User

	validate :id_sender, unique: { scope: :recipient_id}

	def opposed_user(user)
		user == recipient ? sender : recipient
	end

end
