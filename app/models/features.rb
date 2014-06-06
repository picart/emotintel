# added to model for Brow class:

#class Brow < ActiveRecord::Base
#  has_many :emotion_features
#  has_many :emotions, through: :emotion_features, as: :feature
#end

# added to model for Eye class:

#class Eye < ActiveRecord::Base
 # has_many :emotion_features
 # has_many :emotions, through: :emotion_features, as: :feature
#end

# added to model for Mouth class:

#class Mouth < ActiveRecord::Base
#  has_many :emotion_features
#  has_many :emotions, through: :emotion_features, as: :feature
#end

#used console to add controller for emotion and input same defs as brows
#used console to add model for emotion
#then put this code in for emotion class in models

#class Emotion < ActiveRecord::Base
#  has_many :emotion_features
#  has_many :features, through: :emotion_features
# end

#followed with views/new/form for entering emotions

# **** (THIS IS WHERE I STARTED FLIP FLOPPING AROUND LIKE A FISH OUT OF WATER ;)  ****

#looking at form for brows new.html.erb which took an image file
#I looked to blogee form from posts for emotion views.html form
#to receive text field for emotion
#but wasn't sure it shouldn't be :emotion_feature 
#or :emotion, :feature due to the bridge table so wrote:

#<%= form_for @emotion do |f| %>
#<%= f.label :emotion %>
#<%= f.text_field :emotion, class: :emotion_feature %>
#<%= f.submit "add" %>
#<% end %>

#Which I am pretty sure is not right.

#Wasn't sure if the emotion model needed strong params like brows in private section at end:
#From private at end of brows model 
#private
# def brown_params
#  params.require(:brow).permit(:image)
#  end
#checking in with post params in blogee for possible changes to emotions perhaps change should be:
#def emotion_params
#  params.require(:emotion).permit(:string)
#  end
#end

#Which should then interact with the bridge table (below), 
#so I'm sure I'm missing something somewhere

#class EmotionFeature < ActiveRecord::Base
#  belongs_to :emotion
#  belongs_to :feature, polymorphic: true
#end

#and apply it to the database through the EmotionFeature active record migration:
#-- which I added by hand (not console) to new file in db/migration commented out due to nervousness ;)

#class CreateEmotionFeatures < ActiveRecord::Migration
#  create_table(:emotion_features) do |t|
#    t.integer :emotion_id
#    t.integer :feature_id
#    t.string :feature_type
#    t.integer :score
#  end

#  add_index :emotion_features, :emotion_id
#  add_index :emotion_features, :feature_id
#end

#Finally I am trying to figure out if I am creating a feature class active migration which would be the table for brows, eyes, mouths...and heads?

#So that's where I got with this then raked, committed and pushed to git.

