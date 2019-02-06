class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def show
     @gossip = Gossip.find(params[:id])
  end

  def create
    random = 1 + rand(User.all.length)
    title = params[:title]
    content = params[:content]
    @gossip = Gossip.new(title: title, content: content, user_id: random)
    if @gossip.save
      redirect_to gossips_path
    else
      render :new
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(title: params[:title], content: params[:content], user_id: 1 + rand(User.all.length), id: params[:id])
    redirect_to gossips_path(@gossip)
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end
end