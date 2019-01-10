class AddFeesToHosteller < ActiveRecord::Migration
  def change
    add_column :hostellers, :fees, :integer
  end
end
