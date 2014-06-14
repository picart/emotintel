class CreateEmotionBrows < ActiveRecord::Migration
  def change
    create_table :emotion_brows do |t|
      t.references :emotion, index: true
      t.references :brow, index: true
      t.integer :score

      t.timestamps
    end
  end
end
