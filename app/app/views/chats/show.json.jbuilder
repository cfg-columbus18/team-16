json.extract! @chat, :id, :username, :message, :mentor_id, :mentee_id
json.url chat_url(@chat, format: :json)