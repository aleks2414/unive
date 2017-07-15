class CreateInvestmentScores < ActiveRecord::Migration
  def change
    create_table :investment_scores do |t|
      t.float :investment_score, default: 3
      t.references :university, index: true, foreign_key: true
      
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
