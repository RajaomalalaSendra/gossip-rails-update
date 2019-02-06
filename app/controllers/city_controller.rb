class CityController < ApplicationController
  def index
  end

  def new
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
