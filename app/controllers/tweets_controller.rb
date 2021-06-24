class TweetsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show]
  before_action :set_tweet, only: [:show, :edit]
  
  def index
    @tweets = Tweet.includes(:user).order('created_at DESC')
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_parmas)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :show
    end
  end

  def edit
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path

  end


  private

  def tweet_parmas
    params.require(:tweet).permit(:title, :catch_copy, :recipe, :image).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

end
