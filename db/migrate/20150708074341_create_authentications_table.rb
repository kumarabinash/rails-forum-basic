class CreateAuthenticationsTable < ActiveRecord::Migration
  def change
    create_table :authentications do |t|

			t.integer :user_id
			t.string :provider
			t.string :uid
			t.string :token
			t.string :token_secret

			t.timestamps null: false
    end
  end
end
