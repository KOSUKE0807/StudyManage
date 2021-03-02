class CreateStudyRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :study_records do |t|
      t.time :study_time
      t.string :study_text
      t.text :comment
      t.string :subject
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
