class EmotionMouth < ActiveRecord::Base
  belongs_to :emotion
  belongs_to :mouth
  has_many :emotion_mouths
  has_many :mouths, through: :emotion_mouths
end
