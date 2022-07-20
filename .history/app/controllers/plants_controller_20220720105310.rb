class PlantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

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
    plant = find_plant
    head: no
  end

  def update
    plant = find_plant
    render json: plant
  end

  private

  def plant_params
    params.permit(:name, :image, :price, :is_in_stock)
  end
  def find_plant
    Plant.find(id:params[:id])
  end
  def render_not_found_response
    render json: { error: "Plant not found" }, status: :not_found
  end
end
