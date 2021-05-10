class TweetsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show]

  
  def index
    @tweets = Tweet.all
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

  private

  def tweet_parmas
    params.require(:tweet).permit(:title, :catch_copy, :recipe, :image,)
  end

end
