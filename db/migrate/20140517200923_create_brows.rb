class CreateBrows < ActiveRecord::Migration
  def change
    create_table :brows do |t|

      t.timestamps
    end
  end
end
