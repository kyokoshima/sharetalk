class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "message_group_#{params['message_group_id']}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    ActionCable.server.broadcast 'message', {name: current_user.email, content: data['message']}
  end
end
