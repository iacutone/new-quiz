class RemoveQuizTakenFromQuizzes < ActiveRecord::Migration
  def up
    remove_column :quizzes, :quiz_taken
  end

  def down
    add_column :quizzes, :quiz_taken, :boolean
  end
end
