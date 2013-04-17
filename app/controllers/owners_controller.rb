class OwnersController < ApplicationController
  before_filter :authenticate_owner!
  def index
    @cars = Car.all
    @klasses = Klass.all
  end
end
