class ProfessionalLevelsController < ApplicationController
  before_action :set_professional_level, only: [:show, :edit, :update, :destroy]

  # GET /professional_levels
  # GET /professional_levels.json
  def index
    @professional_levels = ProfessionalLevel.all
  end

  # GET /professional_levels/1
  # GET /professional_levels/1.json
  def show
  end

  # GET /professional_levels/new
  def new
    @professional_level = ProfessionalLevel.new
  end

  # GET /professional_levels/1/edit
  def edit
  end

  # POST /professional_levels
  # POST /professional_levels.json
  def create
    @professional_level = ProfessionalLevel.new(professional_level_params)

    respond_to do |format|
      if @professional_level.save
        format.html { redirect_to @professional_level, notice: 'Professional level was successfully created.' }
        format.json { render :show, status: :created, location: @professional_level }
      else
        format.html { render :new }
        format.json { render json: @professional_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professional_levels/1
  # PATCH/PUT /professional_levels/1.json
  def update
    respond_to do |format|
      if @professional_level.update(professional_level_params)
        format.html { redirect_to @professional_level, notice: 'Professional level was successfully updated.' }
        format.json { render :show, status: :ok, location: @professional_level }
      else
        format.html { render :edit }
        format.json { render json: @professional_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_levels/1
  # DELETE /professional_levels/1.json
  def destroy
    @professional_level.destroy
    respond_to do |format|
      format.html { redirect_to professional_levels_url, notice: 'Professional level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_level
      @professional_level = ProfessionalLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_level_params
      params.require(:professional_level).permit(:name)
    end
end
