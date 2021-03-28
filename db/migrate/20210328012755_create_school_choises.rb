class CreateSchoolChoises < ActiveRecord::Migration[6.1]
  def change
    create_table :school_choises do |t|
      t.text :school_choise
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
