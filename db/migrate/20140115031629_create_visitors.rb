class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
    	t.string :name
    	t.string :email
    	t.string :phone_number
    	t.string :major
    	t.string :message
      t.timestamps
    end
  end
end
