class ApartmentController < ApplicationController

  layout 'admin'
     # this tells the controller to use the admin html page inside of layout instead of application html.

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
      flash[:notice] = "Successfully created new listing"
      redirect_to(:action => 'list')
    else
      render('new')
    end
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    if @apartment.update_attributes(params[:apartment])
      redirect_to(:action => 'show', :id => @apartment.id)
    else
      render('edit')
    end
  end

  def destroy
    Apartment.find(params[:id]).destroy
    flash[:notice] = "Successfully deleted listing"
    redirect_to(:action => 'list')
  end

end
