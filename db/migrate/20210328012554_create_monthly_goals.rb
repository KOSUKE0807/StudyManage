class CreateMonthlyGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :monthly_goals do |t|
      t.text :goal
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
