class AddGeolocationToShoutOuts < ActiveRecord::Migration[5.0]
  def change
    add_column :shout_outs, :latitude, :float
    add_column :shout_outs, :longitude, :float
    add_column :shout_outs, :accuracy, :float
  end
end
