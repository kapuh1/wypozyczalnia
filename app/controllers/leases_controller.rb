#coding: utf-8
class LeasesController < ApplicationController
  def new
    @lease = Lease.new
    @car = Car.find params[:car_id]
  end

  def create
    @lease = Lease.new params[:lease]
    @lease.car_id = params[:car_id]
    lease_from = Lease.date_from_params_hash "lease_from", params[:lease]
    lease_to = Lease.date_from_params_hash "lease_to", params[:lease]

    if not @lease.rented_at_given_date? lease_from, lease_to and @lease.save
      redirect_to root_url, notice: 'auto zostało wypożycznoe'
    elsif @lease.valid?
      
      # flash[:notice] = 'cos poszlo nie tak'
      # render :new
      redirect_to new_car_lease_path(params[:car_id]), notice: 'auto jest wypozyczone w tym okresie'
    else
      redirect_to new_car_lease_path(params[:car_id]), notice: 'cos poszlo nie tak'
    end
  end
end
