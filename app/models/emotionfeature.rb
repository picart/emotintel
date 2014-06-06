class Emotionfeature < ActiveRecord::Base
  belongs_to :emotion
  belongs_to :feature, polymorphic: true
end

