class AddScoreToResponse < ActiveRecord::Migration
  def change
    add_column :responses, :score, :integer
  end
end
