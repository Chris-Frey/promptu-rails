class RemoveTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_activities
  end
end
