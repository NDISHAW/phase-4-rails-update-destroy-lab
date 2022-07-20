class PlantsController < ApplicationController

  # GET /plants
  def index
    plants = Plant.all
    render json: plants
  end

  # GET /plants/:id
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  # POST /plants
  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

    def destroy
    bird = find_bird
    render json: bird
  end

  private

  def plant_params
    params.permit(:name, :image, :price, :is_in_stock)
  end
  def find_plant
    plant = Plant.find(id:params[:id])
  end
end
