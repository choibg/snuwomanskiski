class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :userid
    	t.string :passwd
    	t.string :realname
    	t.string :phone_number
    	t.string :email
    	t.integer :year
      t.integer :age 
      t.timestamps
    end
  end
end
