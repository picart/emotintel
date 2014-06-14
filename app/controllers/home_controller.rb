class HomeController < ApplicationController
  def index
    @emotions = Emotion.all
  end
end
