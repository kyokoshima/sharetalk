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

  private
  def message_group_params
    params.require(:message_groups).permit(:title, 
      message_group_users_attributes: [:id, :user_id, :_destroy])
  end
end
