class MeasurementsController < ApplicationController
  before_action :set_measurement, only: [:show, :edit, :update, :destroy]

  # GET /measurements
  # GET /measurements.json
  def index
    @measurements = HTTParty.get("http://136.206.54.244:8080/measurements/id?=1") 
    #@measurements = [{"cow_id"=>"2", "timestamp"=>"2015-02-21T17:46:59.000Z", "ph"=>0.1, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>0, "score"=>0.5}, {"cow_id"=>"2", "timestamp"=>"2015-03-01T10:41:32.000Z", "ph"=>0.1, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>0, "score"=>0.5}, {"cow_id"=>"2", "timestamp"=>"2015-03-17T19:47:59.000Z", "ph"=>0, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>1, "score"=>0.4}, {"cow_id"=>"2", "timestamp"=>"2015-02-23T08:06:55.000Z", "ph"=>0.25, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>0, "score"=>0.65}]  
  end

  # GET /measurements/1
  # GET /measurements/1.json
  def show
  end

  # GET /measurements/new
  def new
    @measurement = Measurement.new
  end

  # GET /measurements/1/edit
  def edit
  end

  # POST /measurements
  # POST /measurements.json
  def create
    @measurement = Measurement.new(measurement_params)

    respond_to do |format|
      if @measurement.save
        format.html { redirect_to @measurement, notice: 'Measurement was successfully created.' }
        format.json { render :show, status: :created, location: @measurement }
      else
        format.html { render :new }
        format.json { render json: @measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurements/1
  # PATCH/PUT /measurements/1.json
  def update
    respond_to do |format|
      if @measurement.update(measurement_params)
        format.html { redirect_to @measurement, notice: 'Measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurement }
      else
        format.html { render :edit }
        format.json { render json: @measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurements/1
  # DELETE /measurements/1.json
  def destroy
    @measurement.destroy
    respond_to do |format|
      format.html { redirect_to measurements_url, notice: 'Measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement
      @measurement = Measurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_params
      params[:measurement]
    end
end
