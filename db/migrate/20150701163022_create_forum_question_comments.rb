class CreateForumQuestionComments < ActiveRecord::Migration
  def change
    create_table :forum_question_comments do |t|
    	t.text :body
    	t.integer :forum_question_id
    	t.integer :user_id
    	
      t.timestamps null: false
    end
  end
end
