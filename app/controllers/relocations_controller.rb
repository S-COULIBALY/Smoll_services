class RelocationsController < ApplicationController
  before_action :set_relocation, only: [:show, :edit, :update, :destroy]

  # GET /relocations
  # GET /relocations.json
  def index
    @relocations = Relocation.all
  end

  # GET /relocations/1
  # GET /relocations/1.json
  def show
  end

  # GET /relocations/new
  def new

    @relocation = Relocation.new
      #2.times {@relocation.locations.build}
      #@relocation.locations.build
      @relocation.locations.build


  end

  # GET /relocations/1/edit
  def edit
  end

  # POST /relocations
  # POST /relocations.json
  def create
    #binding.pry
    @relocation = Relocation.new(relocation_params)

    respond_to do |format|
      if @relocation.save
        format.html { redirect_to @relocation, notice: 'Relocation was successfully created.' }
        format.json { render :show, status: :created, location: @relocation }
      else
        format.html { render :new }
        format.json { render json: @relocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relocations/1
  # PATCH/PUT /relocations/1.json
  def update
    respond_to do |format|
      if @relocation.update(relocation_params)
        format.html { redirect_to @relocation, notice: 'Relocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @relocation }
      else
        format.html { render :edit }
        format.json { render json: @relocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relocations/1
  # DELETE /relocations/1.json
  def destroy
    @relocation.destroy
    respond_to do |format|
      format.html { redirect_to relocations_url, notice: 'Relocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relocation
      @relocation = Relocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relocation_params
      params.require(:relocation).permit(:date, :volume, locations_attributes: [:address, :latitude, :longitude, :floor_number, :elevator, :furniture_elevator, :portage_distance])
    end
end
