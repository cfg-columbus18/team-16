class Chat < ApplicationRecord
  after_create :notify_pusher, on: :create


  '''scope :between, -> (mentor_id,mentee_id) do
  	where (mentor_id: mentor_id, mentee_id: mentee_id). or (
  	where (mentor_id: mentee_id, mentee_id: mentor_id)
  	)
  end

  def self.get(mentor_id,mentee_id)
  	chat = between(mentor_id, mentee_id).first
  	return chat if chat.present?

  	create(mentor_id: mentor_id, mentee_id: mentee_id)
  end'''



  def notify_pusher
  	Pusher.trigger('chat', 'new', self.as_json)
  end
  #belongs_to :users

end