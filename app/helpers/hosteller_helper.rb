module HostellerHelper
  def get_building_name(id)
    building_name = Building.find(id).name
    building_name
  end

  def get_all_buildings
    Building.order(:id).map {|p| [p.name, p.id]}
  end
end
