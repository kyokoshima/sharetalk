class MessageGroupsController < ApplicationController
  def index
    @message_groups = MessageGroup.all
  end
end
