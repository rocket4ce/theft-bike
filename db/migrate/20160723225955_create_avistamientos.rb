class CreateAvistamientos < ActiveRecord::Migration
  def change
    create_table :avistamientos do |t|
      t.references :bike, index: true, foreign_key: true
      t.string :photo
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
