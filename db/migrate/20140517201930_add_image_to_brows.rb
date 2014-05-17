class AddImageToBrows < ActiveRecord::Migration
  def change
    add_column :brows, :image, :string
  end
end
