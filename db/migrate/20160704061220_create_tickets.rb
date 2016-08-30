class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :enter_adult
      t.integer :enter_child
      t.integer :excursion_adult
      t.integer :excursion_child

      t.timestamps null: false
    end
  end
end
