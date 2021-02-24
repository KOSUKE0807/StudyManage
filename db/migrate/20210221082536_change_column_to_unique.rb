class ChangeColumnToUnique < ActiveRecord::Migration[6.1]
  def change
    add_index :students, :email,:unique => true
    add_index :teachers, :email,:unique => true 
  end
end
