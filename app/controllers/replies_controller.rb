class RepliesController < ApplicationController
  before_action :set_reply, only: [:show, :edit, :update, :destroy]

  # GET /replies
  # GET /replies.json
  def index
    @timeline = Timeline.where(:id => params[:timeline_id]).first
    @replies = @timeline.replies.all
  end

  # GET /replies/1
  # GET /replies/1.json
  def show
  end

  # GET /replies/new
  def new
    @timeline = Timeline.where(:id => params[:timeline_id]).first
    @reply = @timeline.replies.build
  end

  # GET /replies/1/edit
  def edit
  end

  # POST /replies
  # POST /replies.json
  def create
    @timeline = Timeline.where(:id => params[:timeline_id]).first
    @timelines = Timeline.all
    @reply = @timeline.replies.build(reply_params)
    @reply.user = current_user

    respond_to do |format|
      if @reply.save
        format.html { redirect_to timelines_url, notice: 'Reply was successfully created.' }
        format.json { render :show, status: :created, location: @reply }
      else
        format.html { render :new }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /replies/1
  # PATCH/PUT /replies/1.json
  def update
    respond_to do |format|
      if @reply.update(reply_params)
        format.html { redirect_to [@timeline,@reply], notice: 'Reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @reply }
      else
        format.html { render :edit }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replies/1
  # DELETE /replies/1.json
  def destroy
    @reply.destroy
    respond_to do |format|
      format.html { redirect_to timeline_replies_url, notice: 'Reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @timeline = Timeline.where(:id => params[:timeline_id]).first
      @reply = @timeline.replies.where(:id => params[:id]).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:comment, :timeline_id)
    end
end
