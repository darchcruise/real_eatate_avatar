class ApartmentController < ApplicationController
  def list

  end

  def index
  end

  def show
    @info = Apartment.all
  end
end
