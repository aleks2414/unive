class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true
      
      t.string :name
      t.string :area
      t.text :description
      t.text :for_who
      t.string :duration
      t.string :modality
      t.string :shift
      t.string :email
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :blog
      t.string :aprox_cost

      t.timestamps null: false
    end
  end
end
