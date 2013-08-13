class AddAnswerChoiceToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :answer_choice, :boolean
  end
end
