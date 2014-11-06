class AddRememberTokenToAdministrators < ActiveRecord::Migration
  def change
    add_column :administrators, :remember_token, :string
    add_index :administrators, :remember_token
    remove_column :administrators, :password_salt
  end
end
