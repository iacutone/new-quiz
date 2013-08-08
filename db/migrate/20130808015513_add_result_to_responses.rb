class AddResultToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :result, :boolean, :default => false
  end
end
