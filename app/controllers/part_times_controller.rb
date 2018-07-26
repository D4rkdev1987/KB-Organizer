class PartTimesController < ApplicationController
  before_action :set_part_time, only: [:show, :edit, :update, :destroy]

  # GET /part_times
  # GET /part_times.json
  def index
    @part_times = PartTime.all
  end

  # GET /part_times/1
  # GET /part_times/1.json
  def show
  end

  # GET /part_times/new
  def new
    @part_time = PartTime.new
  end

  # GET /part_times/1/edit
  def edit
  end

  # POST /part_times
  # POST /part_times.json
  def create
    @part_time = PartTime.new(part_time_params)

    respond_to do |format|
      if @part_time.save
        format.html { redirect_to @part_time, notice: 'Part time was successfully created.' }
        format.json { render :show, status: :created, location: @part_time }
      else
        format.html { render :new }
        format.json { render json: @part_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_times/1
  # PATCH/PUT /part_times/1.json
  def update
    respond_to do |format|
      if @part_time.update(part_time_params)
        format.html { redirect_to @part_time, notice: 'Part time was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_time }
      else
        format.html { render :edit }
        format.json { render json: @part_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_times/1
  # DELETE /part_times/1.json
  def destroy
    @part_time.destroy
    respond_to do |format|
      format.html { redirect_to part_times_url, notice: 'Part time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_time
      @part_time = PartTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_time_params
      params.require(:part_time).permit(:name)
    end
end
