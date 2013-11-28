class ApartmentController < ApplicationController
  def index
  end

  def list
    @apartments = Apartment.order("apartments.price DESC")
  end

  def show
    @apt = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(params[:apartment])
    if @apartment.save
      redirect_to(:action => 'list')
    else
      render('new')
    end
  end

  def destroy
  end

end
