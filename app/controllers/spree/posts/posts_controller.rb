class Spree::Posts::PostsController < Spree::BaseController
  include Spree::Core::ControllerHelpers

  def index
    @posts = Post.where(:live => true).page(params[:page]).per(10).order('created_at desc')
  end

  
  def show
    @post = Post.find_by_slug(params[:slug])
  end


end