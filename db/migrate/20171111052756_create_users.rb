class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest

      t.boolean :email_confirmed
      t.string :confirm_token
    end
  end
end
