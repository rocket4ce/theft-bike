class RemoveStateFromTheft < ActiveRecord::Migration
  def change
    remove_column :theft, :state, :boolean
    add_column :bikes, :state, :boolean, default: false
  end
end
