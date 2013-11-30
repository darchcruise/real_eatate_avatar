class AgentsController < ApplicationController
  def index
    @agents = Agent.all
  end

  def show
  end
end
