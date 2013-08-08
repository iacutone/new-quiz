class AddAnswerIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :answer_id, :integer
    add_column :responses, :question_id, :integer
  end
end
