class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'all'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def create_message(data)
    ActionCable.server.broadcast 'all', {name: current_user['test'], content: data['message']}
  end
end
