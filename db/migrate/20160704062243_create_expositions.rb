class CreateExpositions < ActiveRecord::Migration
  def change
    create_table :expositions do |t|
      t.string :title
      t.text :text
      t.string :address
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
