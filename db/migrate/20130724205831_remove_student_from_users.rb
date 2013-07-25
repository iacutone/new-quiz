class RemoveStudentFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :student
  end

  def down
    add_column :users, :student, :boolean
  end
end
