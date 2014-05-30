class AddImageToMouths < ActiveRecord::Migration
  def change
    add_column :mouths, :image, :string
  end
end
