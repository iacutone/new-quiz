class RemoveQuizIdFromQuiz < ActiveRecord::Migration
  def up
    remove_column :quizzes, :quiz_id
  end

  def down
    add_column :quizzes, :quiz_id, :integer
  end
end
