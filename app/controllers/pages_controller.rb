class PagesController < ApplicationController
  def index
    @posts = Post.most_recent.published
  end

  def about
  end

  def contact
  end

  def projects
  end

  def pdf_download
    send_file "#{Rails.root}/public/MattKubotaResume.pdf", type: "application/pdf", x_sendfile: true
  end
end
