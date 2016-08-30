class ExpositionsController < ApplicationController
  before_action :set_exposition, only: [:show, :edit, :update, :destroy]

  # GET /expositions
  def index
    @expositions = Exposition.all
  end

  # GET /expositions/1
  def show
  end

  # GET /expositions/new
  def new
    @exposition = Exposition.new
  end

  # GET /expositions/1/edit
  def edit
  end

  # POST /expositions
  def create
    @exposition = Exposition.new(exposition_params)

    if @exposition.save
      redirect_to @exposition, notice: 'Exposition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /expositions/1
  def update
    if @exposition.update(exposition_params)
      redirect_to @exposition, notice: 'Exposition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /expositions/1
  def destroy
    @exposition.destroy
    redirect_to expositions_url, notice: 'Exposition was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exposition
      @exposition = Exposition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exposition_params
      params.require(:exposition).permit(:title, :text, :address, :start_time, :end_time, :start_date, :end_date)
    end
end
