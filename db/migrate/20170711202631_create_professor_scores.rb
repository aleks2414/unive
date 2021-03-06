class CreateProfessorScores < ActiveRecord::Migration
  def change
    create_table :professor_scores do |t|
      t.float :professor_score, default: 3
      t.references :university, index: true, foreign_key: true
      
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
