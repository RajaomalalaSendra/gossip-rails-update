class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.new
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
    @comment = Comment.find(params[:gossip_id])
  end

  def update
   @comment = Comment.new
   @gossip = Gossip.find(params[:gossip_id])
    if @comment.update(content: params[:content], user_id: Gossip.find(params[:gossip_id]).user_id, gossip_id: params[:gossip_id])
      redirect_to gossips_path(@gossip)
    else
      render :new
    end
  end

  def destroy
      @gossip = Gossip.find(params[:gossip_id])
      @comment = @gossip.comments.find(params[:id])
      @comment.destroy

      redirect_to gossip_path(@gossip)
  end
end
