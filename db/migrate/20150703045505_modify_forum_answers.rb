class ModifyForumAnswers < ActiveRecord::Migration
  def change
  	change_column :forum_answers, :thumb_up, :integer, :default => 0
  	change_column :forum_answers, :thumb_down, :integer, :default => 0
  	add_column :forum_answers, :approved, :integer, :default => 0
  end
end
