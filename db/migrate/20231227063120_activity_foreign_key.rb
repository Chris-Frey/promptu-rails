class ActivityForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :created_by, :integer
    add_column :activities, :attended_by, :integer, array: true, default: []
    add_column :users, :attending, :integer, array: true, default: []
  end
end
