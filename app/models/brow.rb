class Brow < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  #added to build bridge between brows and emotions in db: 
  has_many :emotion_features
  has_many :emotions, through: :emotion_features, as: :feature
end


