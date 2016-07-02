class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :color
      t.string :brand
      t.integer :ring
      t.text :description
      t.string :photo
      t.timestamps null: false
    end
  end
end
