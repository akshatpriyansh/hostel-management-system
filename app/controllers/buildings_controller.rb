class BuildingsController < ApplicationController
  def index

  end

  def new
    @building = Building.new
  end

  def edit
    building_id = params[:id]
    @building = Building.find(building_id)

    render :'buildings/new'
  end

  def create
    building = Building.new(building_params)
    building.save!
    flash[:error] = 'Job Posting is added successfully.'
    redirect_to hostellers_path
  end

  def update
    building_id = params[:hosteller_id]

    building_object = Building.find(building_id)
    building_object.assign_attributes(building_params)
    if building_object.save
      redirect_to hostellers_path
      flash[:success] = "Worked"
    end
  end


  def building_params
    params.require(:building).permit(:name, :location, :max_strength)
  end

end
