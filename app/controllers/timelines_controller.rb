class TimelinesController < ApplicationController
  before_action :set_timeline, only: [:show, :edit, :update, :destroy, :liking_users]

  # GET /timelines
  # GET /timelines.json
  def index
    @timelines = Timeline.all.order(:id).reverse_order
    @timeline = Timeline.new
    @reply = Reply.new
    @timelines.each {|tl| tl.mark_as_read! :for => current_user }
  end

  def liking_users
    @users = @timeline.liking_users
  end

  # GET /timelines/1
  # GET /timelines/1.json
  def show
  end

  # GET /timelines/new
  def new
    # @timeline = Timeline.new
  end

  # GET /timelines/1/edit
  def edit
  end

  # POST /timelines
  # POST /timelines.json
  def create
    @timeline = Timeline.new(timeline_params)
    @timeline.user = current_user

    respond_to do |format|
      if @timeline.save
        format.html { redirect_to }
        format.json { render :show, status: :created, location: @timeline }
      else
        flash[:notice] = @timeline.errors #"1~75字で入力してください。"
        format.html {redirect_to action: 'index', alert: ''}
        format.html { render :new }
        format.json { render json: @timeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timelines/1
  # PATCH/PUT /timelines/1.json
  def update
    respond_to do |format|
      if @timeline.update(timeline_params)
        format.html { redirect_to @timeline, notice: 'Timeline was successfully updated.' }
        format.json { render :show, status: :ok, location: @timeline }
      else
        format.html { render :edit }
        format.json { render json: @timeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timelines/1
  # DELETE /timelines/1.json
  def destroy
    @timeline.destroy
    respond_to do |format|
      format.html { redirect_to timelines_url, notice: 'Timeline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeline
      @timeline = Timeline.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def timeline_params
      params.require(:timeline).permit(:content, :user_id, :liking_users)
    end
end
