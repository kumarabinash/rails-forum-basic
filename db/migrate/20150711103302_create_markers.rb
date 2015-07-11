class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :marker_type
      t.decimal :lat
      t.decimal :lng
      t.string :title
      t.text :description
      t.text :address
      t.date :expiry_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
