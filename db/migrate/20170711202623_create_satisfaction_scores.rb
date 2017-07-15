class CreateSatisfactionScores < ActiveRecord::Migration
  def change
    create_table :satisfaction_scores do |t|
      t.float :satisfaction_score, default: 3
      t.references :university, index: true, foreign_key: true
      
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
