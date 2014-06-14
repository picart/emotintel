class CreateEmotionEyes < ActiveRecord::Migration
  def change
    create_table :emotion_eyes do |t|
      t.references :emotion, index: true
      t.references :eye, index: true
      t.integer :score

      t.timestamps
    end
  end
end
