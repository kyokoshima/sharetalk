class TurnDetailsController < ApplicationController
  before_action :set_turn_detail, only: [:show, :edit, :update, :destroy]

  # GET /turn_details
  # GET /turn_details.json
  def index
    @turn_details = TurnDetail.all
  end

  # GET /turn_details/1
  # GET /turn_details/1.json
  def show
  end

  # GET /turn_details/new
  def new
    @turn_detail = TurnDetail.new
  end

  # GET /turn_details/1/edit
  def edit
  end

  # POST /turn_details
  # POST /turn_details.json
  def create
    @turn_detail = TurnDetail.new(turn_detail_params)

    respond_to do |format|
      if @turn_detail.save
        format.html { redirect_to @turn_detail, notice: 'Turn detail was successfully created.' }
        format.json { render :show, status: :created, location: @turn_detail }
      else
        format.html { render :new }
        format.json { render json: @turn_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turn_details/1
  # PATCH/PUT /turn_details/1.json
  def update
    respond_to do |format|
      if @turn_detail.update(turn_detail_params)
        format.html { redirect_to @turn_detail, notice: 'Turn detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @turn_detail }
      else
        format.html { render :edit }
        format.json { render json: @turn_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turn_details/1
  # DELETE /turn_details/1.json
  def destroy
    @turn_detail.destroy
    respond_to do |format|
      format.html { redirect_to turn_details_url, notice: 'Turn detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turn_detail
      @turn_detail = TurnDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turn_detail_params
      params.require(:turn_detail).permit(:when, :user_id, :turn_id)
    end
end
