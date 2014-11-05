class RenameClientsToMyClients < ActiveRecord::Migration
  def change
    rename_table :clients, :my_clients
  end
end
