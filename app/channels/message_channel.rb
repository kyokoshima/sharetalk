class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'message:message'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def put_message
    MessageChannel.broadcast_to('message', 'hello')
  end
end
