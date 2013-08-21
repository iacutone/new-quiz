class AddQuizTakenToResponses < ActiveRecord::Migration
  def change
  	add_column :responses, :quiz_taken, :boolean, :default => false
  end
end
