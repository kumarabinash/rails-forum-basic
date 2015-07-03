class ModifyForumQuestions < ActiveRecord::Migration
	def change
		change_column :forum_questions, :view_count, :integer, :default => 0
		change_column :forum_questions, :votes, :integer, :default => 0
		add_column :forum_questions, :solved, :integer, :default => 0
	end
end
