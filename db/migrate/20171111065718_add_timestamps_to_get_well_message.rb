class AddTimestampsToGetWellMessage < ActiveRecord::Migration[5.1]
  def self.up
    add_column :get_well_messages, :created_at, :datetime
    add_column :get_well_messages, :updated_at, :datetime
    change_column :get_well_messages, :created_at, :datetime, null: false
    change_column :get_well_messages, :updated_at, :datetime, null: false
  end

  def self.down
    remove_column :get_well_messages, :created_at
    remove_column :get_well_messages, :updated_at
  end
end
