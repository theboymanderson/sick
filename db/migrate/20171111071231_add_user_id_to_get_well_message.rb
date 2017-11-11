class AddUserIdToGetWellMessage < ActiveRecord::Migration[5.1]
  def change
    remove_column :get_well_messages, :user
    add_column :get_well_messages, :user_id, :int
  end
end
