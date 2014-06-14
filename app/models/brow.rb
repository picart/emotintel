class Brow < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :emotion_brows
  has_many :emotions, through: :emotion_brows, as: :brows
end

