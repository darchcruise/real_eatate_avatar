class AgentsController < ApplicationController

  before_filter :check_login

  def index
    @agents = Agent.all
  end

  def show
    @agent = Agent.find(params[:id])
  end

  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(params[:agent])
    if @agent.save
      flash[:notice] = "Successfully created new agent"
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

  def edit
    @agent = Agent.find(params[:id])
  end

  def update
    @agent = Agent.find(params[:id])
    if @agent.update_attributes(params[:agent])
      redirect_to(:action => 'show', :id => @agent.id)
    else
      render('edit')
    end
  end



end
