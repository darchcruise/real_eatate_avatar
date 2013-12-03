class PropertiesController < ApplicationController


# before_filter :check_login, except: [:index, :sale, :show]

  # these are the only two methods for the public, view page layout application
  def index
  end

  def sale
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
    @result = Geocoder.search(@property.address).first
  end

# the methods below are only to be used by admin, hence view page should layout admin
  def list
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(params[:property])
    if @property.save
      redirect_to(:action => 'list')
      flash[:notice] = "You successfully created a new listing"
    else
      render 'new'
      flash[:notice] = "Sorry, listing was not saved"
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update_attributes(params[:property])
      redirect_to(:action => 'show', :id => @property.id)
    else
      render 'edit'
    end
  end

  def destroy
    Property.find(params[:id]).destroy
      flash[:notice] = "Successfully deleted listing"
      redirect_to(:action => 'list')
  end
end
