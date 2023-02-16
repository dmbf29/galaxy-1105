class PagesController < ApplicationController
  def home
    @planets = Planet.order(name: :asc)
  end
end
