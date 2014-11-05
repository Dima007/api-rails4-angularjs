class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.belongs_to :therapist, index: true
      t.belongs_to :client, index: true
      t.datetime :relationship_date
      t.timestamps
    end
  end
end
