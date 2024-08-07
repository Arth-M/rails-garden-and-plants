class PlantsController < ApplicationController
  def new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant=@garden.plants.new(plant_params)
    if @plant.save!
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  private
  def plant_params
    params.require(:plant).permit(:name,:image)
  end
end
