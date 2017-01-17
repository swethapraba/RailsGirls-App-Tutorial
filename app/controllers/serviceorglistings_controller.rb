class ServiceorglistingsController < ApplicationController
  before_action :set_serviceorglisting, only: [:show, :edit, :update, :destroy]

  # GET /serviceorglistings
  # GET /serviceorglistings.json
  def index
    @serviceorglistings = Serviceorglisting.all
  end

  # GET /serviceorglistings/1
  # GET /serviceorglistings/1.json
  def show
  end

  # GET /serviceorglistings/new
  def new
    @serviceorglisting = Serviceorglisting.new
  end

  # GET /serviceorglistings/1/edit
  def edit
  end

  # POST /serviceorglistings
  # POST /serviceorglistings.json
  def create
    @serviceorglisting = Serviceorglisting.new(serviceorglisting_params)

    respond_to do |format|
      if @serviceorglisting.save
        format.html { redirect_to @serviceorglisting, notice: 'Serviceorglisting was successfully created.' }
        format.json { render :show, status: :created, location: @serviceorglisting }
      else
        format.html { render :new }
        format.json { render json: @serviceorglisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serviceorglistings/1
  # PATCH/PUT /serviceorglistings/1.json
  def update
    respond_to do |format|
      if @serviceorglisting.update(serviceorglisting_params)
        format.html { redirect_to @serviceorglisting, notice: 'Serviceorglisting was successfully updated.' }
        format.json { render :show, status: :ok, location: @serviceorglisting }
      else
        format.html { render :edit }
        format.json { render json: @serviceorglisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serviceorglistings/1
  # DELETE /serviceorglistings/1.json
  def destroy
    @serviceorglisting.destroy
    respond_to do |format|
      format.html { redirect_to serviceorglistings_url, notice: 'Serviceorglisting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serviceorglisting
      @serviceorglisting = Serviceorglisting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serviceorglisting_params
      params.require(:serviceorglisting).permit(:name, :address, :website, :phone, :nonperishables, :freshFoods, :refridgeratedFoods, :frozenFoods, :cookedFoods, :hours, :otherInformation)
    end
end
