class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.string :userid
    	t.string :passwd
    	t.string :realname
    	t.string :phone_number
      t.string :major
    	t.integer :year 
      t.integer :age
      t.timestamps
    end
  end
end
