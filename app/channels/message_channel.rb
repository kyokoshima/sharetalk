class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'message'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def create_message(data)
    ActionCable.server.broadcast 'message', {name: current_user.email, content: data['message']}
  end
end
