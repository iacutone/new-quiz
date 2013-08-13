class Results < ActiveRecord::Migration
  def change
    create_table :results do |t|
    	t.integer :quiz_id
    	t.boolean :choice,  :default => false
    	t.integer :response_id

      t.timestamps
    end
  end
end
