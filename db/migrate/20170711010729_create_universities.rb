class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.references :user, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
      t.string :option
      t.string :private_or_public
      t.string :name
      t.text :description
      t.string :fundation
      t.string :rector
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :website
      t.string :link_admission
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :logo
      t.string :many_proffesors
      t.string :many_students
      t.boolean :is_wifi
      t.boolean :is_cafe
      t.boolean :is_safe
      t.boolean :is_libray
      t.boolean :is_job_help
      t.boolean :is_student_exchange
      t.boolean :is_spiritual
      t.string :sports
      t.string :cutural
      t.string :languages

      t.timestamps null: false
    end
  end
end
