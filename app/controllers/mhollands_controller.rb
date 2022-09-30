class MhollandsController < ApplicationController
  before_action :set_mholland, only: %i[ show edit update destroy ]

  # GET /mhollands or /mhollands.json
  def index
    @mhollands = Mholland.all
  end

  # GET /mhollands/1 or /mhollands/1.json
  def show
  end

  # GET /mhollands/new
  def new
    @mholland = Mholland.new
  end

  # GET /mhollands/1/edit
  def edit
  end

  # POST /mhollands or /mhollands.json
  def create
    @mholland = Mholland.new(mholland_params)

    respond_to do |format|
      if @mholland.save
        format.html { redirect_to mholland_url(@mholland), notice: "Mholland was successfully created." }
        format.json { render :show, status: :created, location: @mholland }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mholland.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mhollands/1 or /mhollands/1.json
  def update
    respond_to do |format|
      if @mholland.update(mholland_params)
        format.html { redirect_to mholland_url(@mholland), notice: "Mholland was successfully updated." }
        format.json { render :show, status: :ok, location: @mholland }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mholland.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mhollands/1 or /mhollands/1.json
  def destroy
    @mholland.destroy

    respond_to do |format|
      format.html { redirect_to mhollands_url, notice: "Mholland was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mholland
      @mholland = Mholland.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mholland_params
      params.require(:mholland).permit(:mason_holland@tayloredu)
    end
end
