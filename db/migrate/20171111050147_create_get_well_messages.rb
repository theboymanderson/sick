class CreateGetWellMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :get_well_messages do |t|
      t.text :message
      t.string :user
    end
  end
end
