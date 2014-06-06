class EmotionController < ApplicationController
  def new
    @emotion = Emotion.new
  end

  def create
    @emotion = Emotion.new(emotion_params).save
    redirect_to new_emotion_path
  end
  
  def show
    @emotion = Emotion.find(params[:id])
  end
  
  private
  #not sure how this should be but think it should be diff.  
  #maybe permit(:string)
  def emotion_params
    params.require(:emotion).permit(:image)
  end
end
end
