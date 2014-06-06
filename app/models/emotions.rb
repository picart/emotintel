class Emotions < ActiveRecord::Base
  has_many :emotion_features
  has_many :features, through: :emotion_features
end



