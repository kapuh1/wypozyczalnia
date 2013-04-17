class CarsController < ApplicationController
  def index
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(name: params[:car][:name],
                    description: params[:car][:description],
                    klass: Klass.find_by_klass_name(params[:car][:klass]))
    if @car.save
      redirect_to root_url, notice: 'car was successfuly created'
    else 
      render :new
    end
  end

  def show
    @car = Car.find params[:id]
  end

  def edit
  end

  def destroy
  end
end
