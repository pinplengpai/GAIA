class GardensController < ApplicationController
  before_action :set_garden, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @gardens = policy_scope(Garden).all
  end

  def show() end

  def new
    @garden = Garden.new
    authorize @garden
  end

  def create
    @garden = Garden.new(garden_params)
    authorize @garden
    if @garden.save
      redirect_to garde_path(@garde)
    else
      render :new
    end
  end

  def edit() end

  def update
    if @garden.update(garden_params)
      redirect_to garden_path(@garden)
    else
      render :edit
    end
  end

  def destroy
    @garden.destroy
    redirect_to gardens_path
  end

  private

  def garden_params
    params.require(:garden).permit(:image_url,
                                   :name, :address, :description,
                                   :size, :price, :number_of_guests, :user_id)
  end

  def set_garden
    @garden = Garden.find(params[:id])
    authorize @garden
  end
end
