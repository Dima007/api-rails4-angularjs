class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators, force: true do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :email
      t.string    :password_digest
      t.datetime  :created_at,      null: false
      t.datetime  :updated_at,      null: false
      t.string    :password_salt
      t.integer   :time_zone
    end
  end
end
