class MouthsController < ApplicationController
    def new
    @mouth = Mouth.new
  end

  def create
    @mouth = Mouth.new(mouth_params).save
    redirect_to new_mouth_path
  end
  
  def show
    @mouth = Mouth.find(params[:id])
  end
  
  private
  
  def mouth_params
    params.require(:mouth).permit(:image)
  end
end
