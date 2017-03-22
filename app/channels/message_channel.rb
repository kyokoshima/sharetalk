class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "message_groups_#{params['message_group_id']}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    current_user.messages.create!(content: data['content'], message_group_id: data['message_group_id'])
#ActionCable.server.broadcast 'message', {name: current_user.email, content: data['message']}
  end
end
