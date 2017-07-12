class CreateAccreditations < ActiveRecord::Migration
  def change
    create_table :accreditations do |t|
      t.references :career, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :link
      t.string :year

      t.timestamps null: false
    end
  end
end
