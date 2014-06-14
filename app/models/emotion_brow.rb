class EmotionBrow < ActiveRecord::Base
  belongs_to :emotion
  belongs_to :brow
  has_many :emotion_brows
  has_many :brows, through: :emotion_brows
end
