class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "message_groups_#{message.message_group_id}_channel",
      message: render_message(message)
  end

  private 
  def render_message(message)
    MessagesController.render partial: 'messages/message', locals: { message: message }
  end
end
