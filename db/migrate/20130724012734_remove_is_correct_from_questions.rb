class RemoveIsCorrectFromQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :is_correct
  end

  def down
    add_column :questions, :is_correct, :boolean
  end
end
