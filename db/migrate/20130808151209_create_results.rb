class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
    	t.boolean	:content
    	t.integer :response_id

      t.timestamps
    end
  end
end
