class FloatersController < ApplicationController
  before_action :set_floater, only: [:show, :edit, :update, :destroy]
  before_action :set_floater_types, only: [:edit, :new]

  # GET /floaters
  def index
    @floaters = Floater.all
  end

  # GET /floaters/1/show
  def show
  end

  # GET /floaters/new
  def new
    @floater = Floater.new
  end

  # GET /floaters/1/edit
  def edit
  end

  # POST /floaters
  def create
    @floater = Floater.new(floater_params)

    if @floater.save
      redirect_to root_url, notice: 'Floater was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /floaters/1
  def update
    if @floater.update(floater_params)
      redirect_to root_url, notice: 'Floater was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /floaters/1
  def destroy
    @floater.destroy
    redirect_to root_url, notice: 'Floater was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floater
      @floater = Floater.find(params[:id])
    end

    def set_floater_types
      @floater_types = FloaterType.all
      @pairs = Xchange.unique
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floater_params
      params.require(:floater).permit(:floater_type_id, :pair_id, :value, :start_at, :end_at, :durability, :floater_type_id)
    end
end
