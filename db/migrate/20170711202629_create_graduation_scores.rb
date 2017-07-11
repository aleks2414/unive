class CreateGraduationScores < ActiveRecord::Migration
  def change
    create_table :graduation_scores do |t|
      t.float :graduation_score, default: 3
      t.references :university, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
