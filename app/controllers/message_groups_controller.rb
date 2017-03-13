class MessageGroupsController < ApplicationController
  def index
    @message_groups = MessageGroup.all
  end
  def new
    @message_group = MessageGroup.new
  end
  def create 
    @message_group = MesssageGroup.new message_group_params
  end
end
