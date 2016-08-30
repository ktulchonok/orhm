class ChangeClients < ActiveRecord::Migration
  def change
    remove_column :clients, :last_name
    remove_column :clients, :first_name
  end
end
