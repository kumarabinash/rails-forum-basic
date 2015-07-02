class CreateForumQuestionsTopicsTable < ActiveRecord::Migration
  def change
    create_table :forum_questions_topics do |t|
    	t.belongs_to :topic, index: true
    	t.belongs_to :forum_question, index: true
    end
  end
end
