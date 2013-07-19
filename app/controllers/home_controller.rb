class HomeController < ApplicationController
  def index
    @weathers = Weather.all
  end

end
