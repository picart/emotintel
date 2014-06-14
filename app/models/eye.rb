class Eye < ActiveRecord::Base
 mount_uploader :image, ImageUploader
  has_many :emotion_eyes
  has_many :emotions, through: :emotion_eyes, as: :eyes
end
