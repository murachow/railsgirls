class CreateTextiles < ActiveRecord::Migration
  def change
    create_table :textiles do |t|
      t.integer :size
      t.string :material
      t.string :picture
      t.string :name

      t.timestamps
    end
  end
end
