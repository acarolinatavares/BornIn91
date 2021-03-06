class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def home
    @posts = Post.paginate(:page => params[:page], :per_page => 5)
  end

  def current_user
    @current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

end
