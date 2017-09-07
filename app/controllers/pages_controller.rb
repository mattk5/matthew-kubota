class PagesController < ApplicationController
  def index
    @posts = Post.last
  end

  def about
  end

  def contact
  end

  def projects
  end
end
