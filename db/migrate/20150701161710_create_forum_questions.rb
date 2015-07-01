class CreateForumQuestions < ActiveRecord::Migration
  def change
    create_table :forum_questions do |t|
    	t.string :title
    	t.text :body
    	t.string :flag
    	t.integer :votes
    	t.integer :view_count
    	t.integer :topic_id
    	t.integer :user_id

      t.timestamps null: false
    end
  end
end
