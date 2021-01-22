class AddLatLongtoProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :lat, :decimal
    add_column :projects, :lng, :decimal
  end
end
