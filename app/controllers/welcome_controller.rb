class WelcomeController < ApplicationController
  def index
  	if params[:search]
  		type = Type.where('lower(name) = ?', params[:search].downcase).first
	  	@posts = type.posts.order('created_at desc').page params[:page]
  	else
  		@posts = Post.order('created_at desc').page params[:page]
  	end
  end
end
