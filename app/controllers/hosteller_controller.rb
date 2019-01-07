class HostellerController < ApplicationController
  def index

  end

  def create
    hosteller = Hosteller.new(hosteller_params)
    hosteller.save!

    flash[:success] = 'Job Posting is added successfully.'
    redirect_to hosteller_path
  end

  def hosteller_params

    params.permit(:hosteller_name, :hosteller_number, :hosteller_address, :father_name,
                                      :father_number, :father_occupation)
  end


end
