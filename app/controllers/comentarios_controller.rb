class ComentariosController < ApplicationController

  def index
  end

  def show
    @comentario = Comentario.find(params[:id])
  end

  def new
    @comentario = Comentario.new
  end

  def create
    @comentario = Comentario.new(params[:comentario])

    respond_to do |format|
      if @comentario.save
        format.html { redirect_to post_path(@comentario.post_id) }
        format.json {}
      else
        format.html { redirect_to post_path(@comentario.post_id) }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy

    respond_to do |format|
      format.html { redirect_to comentarios_url }
      format.json { head :no_content }
    end
  end
end
