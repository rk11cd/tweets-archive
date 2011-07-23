class TweetsController < ApplicationController
  def index
    @tweets = Tweet.desc(:_id).page(params[:page]).per(50)
  end
end
