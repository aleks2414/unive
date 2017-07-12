class CreateCurrentJobs < ActiveRecord::Migration
  def change
    create_table :current_jobs do |t|
      t.references :career, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :business_name
      t.string :job
      t.date :start_date

      t.timestamps null: false
    end
  end
end
