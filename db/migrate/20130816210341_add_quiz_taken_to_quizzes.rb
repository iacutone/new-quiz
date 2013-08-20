class AddQuizTakenToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :quiz_taken, :boolean, :default => false
  end
end
