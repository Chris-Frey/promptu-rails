class RemoveCreatedBy < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :creator_id, :integer
    remove_column :activities, :created_by, :integer
  end
end
