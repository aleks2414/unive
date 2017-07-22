class AddAttToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :image2, :string
  end
end
