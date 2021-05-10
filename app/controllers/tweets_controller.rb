class TweetsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show]

  
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

  private

  def tweet_parmas
    params.require(:tweet).permit(:title, :catch_copy, :recipe, :image).merge(user_id: current_user.id)
  end

end
