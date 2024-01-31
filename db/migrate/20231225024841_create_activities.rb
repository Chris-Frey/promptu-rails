class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.integer :length
      t.string :location

      t.timestamps
    end
  end
end
