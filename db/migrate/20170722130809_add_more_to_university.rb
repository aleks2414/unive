class AddMoreToUniversity < ActiveRecord::Migration
  def change
    add_column :universities, :gym, :boolean, default: false
    add_column :universities, :pool, :boolean, default: false
    add_column :universities, :residence, :boolean, default: false
    add_column :universities, :location, :boolean, default: false
    add_column :universities, :luch, :boolean, default: false

    add_column :universities, :football, :boolean, default: false
    add_column :universities, :soccer, :boolean, default: false
    add_column :universities, :volley, :boolean, default: false
    add_column :universities, :tennis, :boolean, default: false
    add_column :universities, :table_tennis, :boolean, default: false
    add_column :universities, :baseball, :boolean, default: false
    add_column :universities, :track_and_field, :boolean, default: false
    add_column :universities, :golf, :boolean, default: false
    add_column :universities, :swimming, :boolean, default: false
    add_column :universities, :rugby, :boolean, default: false
    add_column :universities, :climbing, :boolean, default: false
    add_column :universities, :lacrosse, :boolean, default: false

    add_column :universities, :drawing, :boolean, default: false
    add_column :universities, :photography, :boolean, default: false
    add_column :universities, :sculpture, :boolean, default: false
    add_column :universities, :theatre, :boolean, default: false
    add_column :universities, :wood, :boolean, default: false
    add_column :universities, :music, :boolean, default: false
    add_column :universities, :choir, :boolean, default: false
    add_column :universities, :marching_band, :boolean, default: false
    add_column :universities, :dance, :boolean, default: false
    add_column :universities, :mun, :boolean, default: false
    add_column :universities, :volunteer, :boolean, default: false
    add_column :universities, :gamers, :boolean, default: false

    add_column :universities, :english, :boolean, default: false
    add_column :universities, :spanish, :boolean, default: false
    add_column :universities, :french, :boolean, default: false
    add_column :universities, :german, :boolean, default: false
    add_column :universities, :chinese, :boolean, default: false
    add_column :universities, :italian, :boolean, default: false
    add_column :universities, :portuguese, :boolean, default: false
    add_column :universities, :russian, :boolean, default: false
    add_column :universities, :japanese, :boolean, default: false
    add_column :universities, :latin, :boolean, default: false
    add_column :universities, :greek, :boolean, default: false
    add_column :universities, :signs, :boolean, default: false
  end
end
