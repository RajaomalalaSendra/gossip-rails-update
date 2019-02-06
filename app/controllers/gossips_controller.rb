class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def new
  end

  def show
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
  end

  def update
  end

  def destroy
  end
end
