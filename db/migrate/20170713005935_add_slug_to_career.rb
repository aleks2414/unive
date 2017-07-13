class AddSlugToCareer < ActiveRecord::Migration
  def change
    add_column :careers, :slug, :string
    add_index :careers, :slug, unique: true
  end
end
