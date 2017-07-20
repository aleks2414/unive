class AddAtrributeToCareer < ActiveRecord::Migration
  def change
    add_column :careers, :option, :string
  end
end
