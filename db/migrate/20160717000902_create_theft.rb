class CreateTheft < ActiveRecord::Migration
  def change
    create_table :theft do |t|
      t.references :user, index: true, foreign_key: true
      t.references :bike, index: true, foreign_key: true
      t.datetime :time_theft
      t.string :address
      t.boolean :state, default: true
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
