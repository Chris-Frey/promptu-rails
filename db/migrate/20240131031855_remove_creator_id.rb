class RemoveCreatorId < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :user_id, :integer
  end
end
