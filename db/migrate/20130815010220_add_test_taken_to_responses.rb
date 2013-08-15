class AddTestTakenToResponses < ActiveRecord::Migration
  def change
    add_column :quizzes, :show_quiz, :boolean, :default => false
  end
end
