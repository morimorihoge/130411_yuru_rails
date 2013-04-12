class PostLikesController < ApplicationController
  # GET /post_likes
  # GET /post_likes.json
  def index
    @post_likes = PostLike.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post_likes }
    end
  end

  # GET /post_likes/1
  # GET /post_likes/1.json
  def show
    @post_like = PostLike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post_like }
    end
  end

  # GET /post_likes/new
  # GET /post_likes/new.json
  def new
    @post_like = PostLike.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post_like }
    end
  end

  # GET /post_likes/1/edit
  def edit
    @post_like = PostLike.find(params[:id])
  end

  # POST /post_likes
  # POST /post_likes.json
  def create
    logger.error "=-=-=-=-=-=-=-=-=--=-=-=-=-==-=-=-=-=-=-=-"
    logger.error params[:micropost_id]
    @post_like = PostLike.create(:micropost_id => params[:micropost_id])
    logger.error "=-=-=-=-=-=-=-=-=--=-=-=-=-==-=-=-=-=-=-=-"
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  # PUT /post_likes/1
  # PUT /post_likes/1.json
  def update
    @post_like = PostLike.find(params[:id])

    respond_to do |format|
      if @post_like.update_attributes(params[:post_like])
        format.html { redirect_to @post_like, notice: 'Post like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_likes/1
  # DELETE /post_likes/1.json
  def destroy
    @post_like = PostLike.find(params[:id])
    @post_like.destroy

    respond_to do |format|
      format.html { redirect_to post_likes_url }
      format.json { head :no_content }
    end
  end
end
