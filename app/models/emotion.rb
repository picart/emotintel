class Emotion < ActiveRecord::Base
  has_many :emotion_brows
  has_many :brows, through: :emotion_brows
  has_many :emotion_eyes
  has_many :eyes, through: :emotion_eyes
  has_many :emotion_mouths
  has_many :mouths, through: :emotion_mouths
end



