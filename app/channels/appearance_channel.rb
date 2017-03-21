class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'all'
    current_user.appear
  end

  def unsubscribed
    current_user.disappear
  end

  def appear(data)
    current_user.appear on: data['appearing_on']
    ActionCable.server.broadcast 'all', current_user
  end

  def away
    current_user.away
  end
end
