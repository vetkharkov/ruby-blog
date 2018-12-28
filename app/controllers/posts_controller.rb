class PostsController < ActionController::Base

  layout 'application'

  before_action :set_post, only:[:show, :edit, :update, :destroy]

  def index
  	@title = 'Добро пожаловать!'
    @posts = Post.all
  end

  def show
  	# @post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
      redirect_to @post, flash: { success: 'Статья создана' }
  	else
      flash.now[:danger] = 'Статья не создана'
      render :new
  	end

  end

  def edit
  	# @post = Post.find(params[:id])
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post, flash: { success: 'Статья успешно обновлена' }
    else
      flash.now[:danger] = 'Статья не обновлена'
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, flash: { success: 'Статья успешно удалена' }
  end

  private

  def set_post
  	@post = Post.find(params[:id])
  end

  def post_params
  	params.require(:post).permit(:title, :summary, :body)
  end

end
