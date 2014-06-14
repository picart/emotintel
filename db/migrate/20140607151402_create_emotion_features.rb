class CreateEmotionFeatures < ActiveRecord::Migration
  def change
    create_table :emotion_features do |t|
      t.integer :emotion_id
      t.integer :feature_id
      t.string :feature_type
      t.integer :score
    end

    add_index :emotion_features, :emotion_id
    add_index :emotion_features, :feature_id
    
  end
end
