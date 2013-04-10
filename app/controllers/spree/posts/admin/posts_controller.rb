class Spree::Posts::Admin::PostsController < Spree::Admin::BaseController
  
  

  def index
    @posts = Post.page(params[:page]).per(10).order('created_at desc')
  end

  
  def show
    @post = Post.find_by_id(params[:id])
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
    @products = Spree::Product.all
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.update_attributes(:title => params[:post][:title], :live => params[:post][:live], :body => params[:body])
    @post.save
    redirect_to [:admin, @post], notice: 'Blog post was successfully updated.' 
  end

  def create
    @post = Post.create params[:post]
    @post.body = params[:body]
    @post.save

    redirect_to [:admin, @post], notice: 'Blog post was successfully created.' 
    
  end
end