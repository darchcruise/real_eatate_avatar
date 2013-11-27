class ApartmentController < ApplicationController
  def list
    @apartments = Apartment.order("apartments.price DESC")
  end

  def index
  end

  def show
    @apt = Apartment.find(params[:id])
  end
end
