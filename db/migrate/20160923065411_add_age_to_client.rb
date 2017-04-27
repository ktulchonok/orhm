class AddAgeToClient < ActiveRecord::Migration
  def change
    add_column :clients, :age, :string
  end
end
