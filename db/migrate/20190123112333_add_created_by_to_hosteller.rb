class AddCreatedByToHosteller < ActiveRecord::Migration
  def change
    add_column :hostellers, :created_by, :integer
  end
end
