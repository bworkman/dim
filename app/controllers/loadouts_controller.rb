class LoadoutsController < ApplicationController
  before_action :set_loadout, only: [:show, :edit, :update, :destroy]

  # GET /loadouts
  # GET /loadouts.json
  def index
    @loadouts = current_user.loadouts
  end

  # GET /loadouts/1
  # GET /loadouts/1.json
  def show
  end

  # GET /loadouts/new
  def new
    @loadout = Loadout.new
  end

  # GET /loadouts/1/edit
  def edit
  end

  # POST /loadouts
  # POST /loadouts.json
  def create
    @loadout = Loadout.new(loadout_params)

    respond_to do |format|
      if @loadout.save
        format.html { redirect_to @loadout, notice: 'Loadout was successfully created.' }
        format.json { render :show, status: :created, location: @loadout }
      else
        format.html { render :new }
        format.json { render json: @loadout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loadouts/1
  # PATCH/PUT /loadouts/1.json
  def update
    respond_to do |format|
      if @loadout.update(loadout_params)
        format.html { redirect_to @loadout, notice: 'Loadout was successfully updated.' }
        format.json { render :show, status: :ok, location: @loadout }
      else
        format.html { render :edit }
        format.json { render json: @loadout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loadouts/1
  # DELETE /loadouts/1.json
  def destroy
    @loadout.destroy
    respond_to do |format|
      format.html { redirect_to loadouts_url, notice: 'Loadout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loadout
      @loadout = current_user.loadouts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loadout_params
      params.require(:loadout).permit(:name, :item1, :item2, :item3)
    end
end
