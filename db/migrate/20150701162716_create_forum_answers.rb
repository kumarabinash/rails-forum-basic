class CreateForumAnswers < ActiveRecord::Migration
  def change
    create_table :forum_answers do |t|
    	t.text :body
    	t.integer :thumb_up
    	t.integer :thumb_down
    	t.string :flag
    	t.integer :forum_question_id
    	t.integer :user_id
    	
      t.timestamps null: false
    end
  end
end
