class AddRelationToClient < ActiveRecord::Migration
  def change
    change_table(:clients) do |t|
      t.belongs_to :owner
    end
    add_index :clients, :owner_id
  end
end
