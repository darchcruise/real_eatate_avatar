class UsersController < ApplicationController

  def index
    render 'list'
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:alert] = "Congratulations! You have successfully registered."
        redirect_to @user
    else
       flash[:notice] = @user.errors.full_messages
        render 'new'
    end
  end


end