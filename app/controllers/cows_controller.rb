class CowsController < ApplicationController
  #before_action :set_cow, only: [:show, :edit, :update, :destroy]
  # GET /cows
  # GET /cows.json
  def index
    @cows = HTTParty.get("http://136.206.54.244:8080/measurements/?id=1") 
    #@cows = [{"cow_id"=>"2", "timestamp"=>"2015-02-21T17:46:59.000Z", "ph"=>0.1, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>0, "score"=>0.5}, {"cow_id"=>"2", "timestamp"=>"2015-03-01T10:41:32.000Z", "ph"=>0.1, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>0, "score"=>0.5}, {"cow_id"=>"2", "timestamp"=>"2015-03-17T19:47:59.000Z", "ph"=>0, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>1, "score"=>0.4}, {"cow_id"=>"2", "timestamp"=>"2015-02-23T08:06:55.000Z", "ph"=>0.25, "imp"=>0.2, "nir"=>0.2, "dfd_0"=>0, "score"=>0.65}]
    #@graphs = HTTParty.get("http://136.206.54.244:8080")
  end

  # GET /cows/1
  # GET /cows/1.json
  def show
  
  end

  def display

  end

  # GET /cows/new
  def new
    @cow = Cow.new
  end

  # GET /cows/1/edit
  def edit
  end

  # POST /cows
  # POST /cows.json
  def create
    @cow = Cow.new(cow_params)

    respond_to do |format|
      if @cow.save
        format.html { redirect_to @cow, notice: 'Cow was successfully created.' }
        format.json { render :show, status: :created, location: @cow }
      else
        format.html { render :new }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cows/1
  # PATCH/PUT /cows/1.json
  def update
    respond_to do |format|
      if @cow.update(cow_params)
        format.html { redirect_to @cow, notice: 'Cow was successfully updated.' }
        format.json { render :show, status: :ok, location: @cow }
      else
        format.html { render :edit }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cows/1
  # DELETE /cows/1.json
  def destroy
    @cow.destroy
    respond_to do |format|
      format.html { redirect_to cows_url, notice: 'Cow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cow
      @cow = Cow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cow_params
      params[:cow]
    end
end
