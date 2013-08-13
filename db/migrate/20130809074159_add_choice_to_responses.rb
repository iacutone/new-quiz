class AddChoiceToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :choice, :boolean, :default => false
  end
end
