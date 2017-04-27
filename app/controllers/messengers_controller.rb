class MessengersController < ApplicationController
  before_action :set_messenger, only: [:show, :edit, :update, :destroy]

  # GET /messengers
  def index
    @messengers = Messenger.includes(:topics).where.not(topics: {messenger_id: nil})
  end

  # GET /messengers/1
  def show
    @messenger = Messenger.find(params[:id])
  end

  # GET /messengers/new
  def new
    @messenger = Messenger.new
  end

  # GET /messengers/1/edit
  def edit
  end

  # POST /messengers
  def create
    @messenger = Messenger.new(messenger_params)

    if @messenger.save
      redirect_to @messenger, notice: 'Messenger was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /messengers/1
  def update
    if @messenger.update(messenger_params)
      redirect_to @messenger, notice: 'Messenger was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /messengers/1
  def destroy
    @messenger.destroy
    redirect_to messengers_url, notice: 'Messenger was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messenger
      @messenger = Messenger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def messenger_params
      params[:messenger]
    end
end
