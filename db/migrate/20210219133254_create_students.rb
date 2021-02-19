class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :user_name, null: false, unique: true
      t.string :email
      t.string :image
      t.string :password_digest
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
