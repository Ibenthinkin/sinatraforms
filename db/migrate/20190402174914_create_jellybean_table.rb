class CreateJellybeanTable < ActiveRecord::Migration[5.2]
  def change
    create_table :jellybeans do |t|
      t.string :label
      t.string :flavor
      t.integer :popularity
    end
  end
end
