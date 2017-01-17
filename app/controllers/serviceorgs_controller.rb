class ServiceorgsController < ApplicationController
  before_action :set_serviceorg, only: [:show, :edit, :update, :destroy]

  # GET /serviceorgs
  # GET /serviceorgs.json
  def index
    @serviceorgs = Serviceorg.all
  end

  # GET /serviceorgs/1
  # GET /serviceorgs/1.json
  def show
  end

  # GET /serviceorgs/new
  def new
    @serviceorg = Serviceorg.new
  end

  # GET /serviceorgs/1/edit
  def edit
  end

  # POST /serviceorgs
  # POST /serviceorgs.json
  def create
    @serviceorg = Serviceorg.new(serviceorg_params)

    respond_to do |format|
      if @serviceorg.save
        format.html { redirect_to @serviceorg, notice: 'Serviceorg was successfully created.' }
        format.json { render :show, status: :created, location: @serviceorg }
      else
        format.html { render :new }
        format.json { render json: @serviceorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serviceorgs/1
  # PATCH/PUT /serviceorgs/1.json
  def update
    respond_to do |format|
      if @serviceorg.update(serviceorg_params)
        format.html { redirect_to @serviceorg, notice: 'Serviceorg was successfully updated.' }
        format.json { render :show, status: :ok, location: @serviceorg }
      else
        format.html { render :edit }
        format.json { render json: @serviceorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serviceorgs/1
  # DELETE /serviceorgs/1.json
  def destroy
    @serviceorg.destroy
    respond_to do |format|
      format.html { redirect_to serviceorgs_url, notice: 'Serviceorg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serviceorg
      @serviceorg = Serviceorg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serviceorg_params
      params.require(:serviceorg).permit(:name, :address, :website, :phone, :nonperishables, :fresh, :refridgerated, :frozen, :cooked, :hours, :otherInfo)
    end
end
