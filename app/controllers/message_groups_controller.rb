class MessageGroupsController < ApplicationController
  def index
    @message_groups = MessageGroup.all
  end
  def new
    @message_group = MessageGroup.new
  end
  def create 
    @message_group = MessageGroup.new message_group_params
    
    if @message_group.save
      flash[:notice] = 'MessageGroup was successfulle created.'
      redirect_to message_group_messages_url @message_group
    else
      render :new
    end
 end

  private
  def message_group_params
    params.require(:message_group).permit(:title, 
      message_group_users_attributes: [:id, :user_id, :_destroy])
  end
end
