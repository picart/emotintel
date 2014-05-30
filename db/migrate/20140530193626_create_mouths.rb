class CreateMouths < ActiveRecord::Migration
  def change
    create_table :mouths do |t|

      t.timestamps
    end
  end
end
