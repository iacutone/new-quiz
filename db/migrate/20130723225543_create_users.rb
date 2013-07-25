class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :password_digest
    	t.string :email
    	t.boolean :student, :default => false
    	t.boolean :teacher, :default => false

      t.timestamps
    end
  end
end
