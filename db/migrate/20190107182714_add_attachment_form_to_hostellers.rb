class AddAttachmentFormToHostellers < ActiveRecord::Migration
  def self.up
    change_table :hostellers do |t|
      t.attachment :form
    end
  end

  def self.down
    remove_attachment :hostellers, :form
  end
end
