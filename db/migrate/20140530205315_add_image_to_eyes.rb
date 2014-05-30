class AddImageToEyes < ActiveRecord::Migration
  def change
    add_column :eyes, :image, :string
  end
end
