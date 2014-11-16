class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.paginate(:page => params[:page], :per_page => 10)
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def show
    @usuario = Usuario.find(params[:id])
    @posts = @usuario.posts.paginate(:page => params[:page], :per_page => 5)
  end

  def update
    @usuario = Usuario.find(params[:id])

    respond_to do |format|
      if @usuario.update_attributes(params[:usuario])
        format.html { redirect_to @usuario, notice: 'Usuário alterado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

end
