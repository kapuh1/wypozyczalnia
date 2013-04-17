class KlassesController < ApplicationController
  def index 
    @klasses = Klass.all
  end

  def show
    @klass = Klass.find_by_klass_name(params[:id])
  end

  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.new(params[:klass])
    if @klass.save
      redirect_to root_url, notice: 'class added'
    else
      render :new
    end
  end
end
