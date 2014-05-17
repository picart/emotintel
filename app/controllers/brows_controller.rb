class BrowsController < ApplicationController
  def new
    @brow = Brow.new
  end

  def create
    @brow = Brow.new(brow_params).save
    redirect_to new_brow_path
  end
  
  def show
    @brow = Brow.find(params[:id])
  end
  
  private
  
  def brow_params
    params.require(:brow).permit(:image)
  end
end
