class EyesController < ApplicationController
  def new
    @eye = Eye.new
  end

  def create
    @eye = Eye.new(eye_params).save
    redirect_to new_eye_path
  end
  
  def show
    @eye = Eye.find(params[:id])
  end
  
  private
  
  def eye_params
    params.require(:eye).permit(:image)
  end
end
