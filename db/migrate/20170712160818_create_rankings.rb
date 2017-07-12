class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :career, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.integer :position
      t.string :link

      t.timestamps null: false
    end
  end
end
