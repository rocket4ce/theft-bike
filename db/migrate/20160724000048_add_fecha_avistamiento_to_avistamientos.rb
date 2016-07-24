class AddFechaAvistamientoToAvistamientos < ActiveRecord::Migration
  def change
    add_column :avistamientos, :fecha_avistamiento, :datetime
  end
end
