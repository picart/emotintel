class CreateEmotionMouths < ActiveRecord::Migration
  def change
    create_table :emotion_mouths do |t|
      t.references :emotion, index: true
      t.references :mouth, index: true
      t.integer :score

      t.timestamps
    end
  end
end
