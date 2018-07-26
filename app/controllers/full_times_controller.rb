class FullTimesController < ApplicationController
  before_action :set_full_time, only: [:show, :edit, :update, :destroy]

  # GET /full_times
  # GET /full_times.json
  def index
    @full_times = FullTime.all
  end

  # GET /full_times/1
  # GET /full_times/1.json
  def show
  end

  # GET /full_times/new
  def new
    @full_time = FullTime.new
  end

  # GET /full_times/1/edit
  def edit
  end

  # POST /full_times
  # POST /full_times.json
  def create
    @full_time = FullTime.new(full_time_params)

    respond_to do |format|
      if @full_time.save
        format.html { redirect_to @full_time, notice: 'Full time was successfully created.' }
        format.json { render :show, status: :created, location: @full_time }
      else
        format.html { render :new }
        format.json { render json: @full_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /full_times/1
  # PATCH/PUT /full_times/1.json
  def update
    respond_to do |format|
      if @full_time.update(full_time_params)
        format.html { redirect_to @full_time, notice: 'Full time was successfully updated.' }
        format.json { render :show, status: :ok, location: @full_time }
      else
        format.html { render :edit }
        format.json { render json: @full_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /full_times/1
  # DELETE /full_times/1.json
  def destroy
    @full_time.destroy
    respond_to do |format|
      format.html { redirect_to full_times_url, notice: 'Full time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_full_time
      @full_time = FullTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def full_time_params
      params.require(:full_time).permit(:name, :start_date)
    end
end
