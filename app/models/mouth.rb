class Mouth < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :emotion_mouths
  has_many :emotions, through: :emotion_mouths, as: :mouths
end
