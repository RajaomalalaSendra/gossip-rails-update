class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    @comment = Comment.new(content: params[:content], user_id: 1 + rand(User.all.length), gossip_id: params[:gossip_id])
    if @comment.save
      redirect_to gossips_path
    else
      render :new
    end
  end

  def edit
    @gossip = Comment.find(params[:gossip_id])
  end

  def update
   @comment = Comment.new
    if @comment.update(content: params[:content], user_id: 1 + rand(User.all.length), gossip_id: params[:gossip_id])
      redirect_to gossips_path
    else
      render :new
    end
  end

  def destroy
    @gossip = Comment.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end
end
