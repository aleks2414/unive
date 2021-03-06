class CreateExStudents < ActiveRecord::Migration
  def change
    create_table :ex_students do |t|
      t.references :career, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
