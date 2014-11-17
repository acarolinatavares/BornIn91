# encoding: UTF-8
class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    usuario = Usuario.find_or_create_with_omniauth(auth)
    session[:usuario_id] = usuario.id
    redirect_to :back
  end

  def failure
    redirect_to root_url
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to root_url
  end

end