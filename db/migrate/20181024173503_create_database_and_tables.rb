class CreateDatabaseAndTables < ActiveRecord::Migration[5.2]
	  def change
    create_table :users do |t|
    	t.string "first_name", null: false
    	t.string "last_name", null: false

    	t.timestamps
    end

    create_table :links do |t|
    	t.string "url", null: false

    	t.references :user, index: true

    	t.timestamps
    end

    create_table :comments do |t|
    	t.string "body", null: false

    	t.references :user, index: true
    	t.references :link, index: true
    	t.references :comment, index: true

    	t.timestamps
    end
  end
end
