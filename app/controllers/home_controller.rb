class HomeController < ApplicationController
  def index
    @home = User.list(1)
  end
end
