class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.references :topic, index: true, foreign_key: true
      t.string :author

      t.timestamps null: false
    end
  end
end
