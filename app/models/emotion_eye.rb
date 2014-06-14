class EmotionEye < ActiveRecord::Base
  belongs_to :emotion
  belongs_to :eye
  has_many :emotion_eyes
  has_many :eyes, through: :emotion_eyes
end
