class CreateEyes < ActiveRecord::Migration
  def change
    create_table :eyes do |t|

      t.timestamps
    end
  end
end
