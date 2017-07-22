class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.references :user, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true
      t.string :image

      t.timestamps null: false
    end
  end
end
