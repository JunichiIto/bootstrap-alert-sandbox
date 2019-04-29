class HomeController < ApplicationController
  def index
    flash.now[:notice] = 'Hello, world!'
  end
end
