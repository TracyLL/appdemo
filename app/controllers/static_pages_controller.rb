class StaticPagesController < ApplicationController
  def home
  	
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page]) #current_user why it can be used anywhere?
    end
  end
  

  def help
  end
end
