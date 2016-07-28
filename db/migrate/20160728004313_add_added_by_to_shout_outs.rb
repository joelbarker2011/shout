class AddAddedByToShoutOuts < ActiveRecord::Migration[5.0]
  def change
    add_column :shout_outs, :added_by, :string, index: true
  end
end
