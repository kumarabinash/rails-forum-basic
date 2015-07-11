class ChangeColumnInMarkers < ActiveRecord::Migration
  def change
  	change_column :markers, :lat, :decimal, :precision => 12, :scale => 7
  	change_column :markers, :lng, :decimal, :precision => 12, :scale => 7
  end
end
