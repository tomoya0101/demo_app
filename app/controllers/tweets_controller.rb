class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
  end
  
  def create
    tweet = params.require(:tweet).permit(:title, :content)
    @tweet = Tweet.create(tweet)
    redirect_to '/tweets/index'
  end
  
  def destroy
    Tweet.destroy(params[:id])
    redirect_to '/tweets/index'
  end
end
