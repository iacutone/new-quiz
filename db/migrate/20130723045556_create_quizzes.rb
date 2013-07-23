class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
    	t.string :name, :quiz_id

      t.timestamps
    end
  end
end
