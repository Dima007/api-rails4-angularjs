class CreateTherapistsClients < ActiveRecord::Migration
  def change
    create_table :therapists_clients do |t|
      t.belongs_to :therapist, index: true
      t.belongs_to :client, index: true
      t.datetime :therapists_clients_date
      t.timestamps
    end
  end
end
