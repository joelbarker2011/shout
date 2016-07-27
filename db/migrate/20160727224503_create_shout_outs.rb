class CreateShoutOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :shout_outs do |t|
      t.string :comment, null: false
      t.boolean :confirmed, null: false, default: false

      t.timestamps
    end
  end
end
