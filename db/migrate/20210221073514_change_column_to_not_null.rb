class ChangeColumnToNotNull < ActiveRecord::Migration[6.1]
  def up
    change_column :teachers, :email,:string, null: false
    change_column :students, :email,:string, null: false
  end

  def down
    change_column :teachers, :email,:string
    change_column :students, :email,:string
  end
end
