class AddFieldsToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :response_question, :string
    add_column :responses, :response_answer, :string
  end
end
