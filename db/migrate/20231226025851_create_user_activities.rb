class CreateUserActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :user_activities do |t|
      t.integer :activity_id
      t.integer :user_id

      t.timestamps
    end
  end
end
