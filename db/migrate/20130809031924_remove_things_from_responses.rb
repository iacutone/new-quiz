class RemoveThingsFromResponses < ActiveRecord::Migration
  def up
    remove_column :responses, :content
    remove_column :responses, :score
    remove_column :responses, :result
  end

  def down
    add_column :responses, :result, :boolean
    add_column :responses, :score, :integer
    add_column :responses, :content, :string
  end
end
