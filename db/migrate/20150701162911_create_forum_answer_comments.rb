class CreateForumAnswerComments < ActiveRecord::Migration
  def change
    create_table :forum_answer_comments do |t|
    	t.text :body
    	t.integer :forum_answer_id
    	t.integer :user_id
    	
      t.timestamps null: false
    end
  end
end
