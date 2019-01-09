class HostellerController < ApplicationController
  def index

  end

  def new
    @hosteller = Hosteller.new
  end

  def edit
    hosteller_id = params[:id]
    @hosteller = Hosteller.find(hosteller_id)

    render :'hosteller/new'
  end

  def create
    hosteler = Hosteller.new(hosteller_params)
    hosteler.save!
    flash[:error] = 'Job Posting is added successfully.'
    redirect_to hostellers_path
  end

  def update
    hosteller_id = params[:hosteller_id]

    hosteller_object = Hosteller.find(hosteller_id)
    hosteller_object.assign_attributes(hosteller_params)
    if hosteller_object.save
      redirect_to hostellers_path
      flash[:success] = "Worked"
    end
  end
  def show
    hosteller_id = params[:id]
    @hosteller = Hosteller.find(hosteller_id)
  end

  def get_all_hostellers
    hosteler_name = params[:hosteller_name]
    hosteler_object = Hosteller.where(hosteller_name: hosteler_name)

    if hosteler_object.present?
      @hosteller_data = {}
      get_hostellers_by_name(hosteler_object, @hosteller_data)
      respond_to do |format|
        format.html { render :'hosteller/_get_all_hosteller', layout: false }
      end
    end
  end

  def get_hostellers_by_name(hostellers, hosteller_data)
    hostellers.each do |hosteller|
      hosteller_data[hosteller.id] = {
          hosteller_name: hosteller.hosteller_name,
          building_id: hosteller.building_id,
          block: hosteller.block,
          room_number: hosteller.block
      }
    end
  end

  def hosteller_params
    params.require(:hosteller).permit(:hosteller_name, :hosteller_number, :hosteller_address,
                                      :father_name, :father_number, :father_occupation, :mother_name,
                                      :mother_number, :block, :building_id, :room_number, :form
    )
  end


end
