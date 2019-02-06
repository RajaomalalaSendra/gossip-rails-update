class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    @comment = Gossip.new(content: params[:content], user_id: 1 + rand(User.all.length), gossip_id: params[:id])
    if @comment.save
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
