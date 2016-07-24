class AddStoleIdToAvistamientos < ActiveRecord::Migration
  def change
    add_reference :avistamientos, :stole, index: true, foreign_key: true
  end
end
