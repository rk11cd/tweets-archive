class TweetsController < ApplicationController
  def index
    @q    = params[:q]
    @page = params[:page]

    if @q.present?
      @tweets = Tweet.query(@q)
    else
      @tweets = Tweet.all
    end

    @tweets = @tweets.desc(:_id).page(@page).per(50)
  end
end
