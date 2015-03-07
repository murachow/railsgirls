class ChangeSizeToString < ActiveRecord::Migration
  def change
    change_column :textiles, :size, :string
  end
end
