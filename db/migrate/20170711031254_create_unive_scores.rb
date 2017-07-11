class CreateUniveScores < ActiveRecord::Migration
  def change
    create_table :unive_scores do |t|
      t.float :unive_score, default: 3
      t.references :university, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
