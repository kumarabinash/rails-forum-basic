class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :username
    	t.string :image_url
    	t.string :address
    	t.string :phone_number
    	t.string :gender
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
