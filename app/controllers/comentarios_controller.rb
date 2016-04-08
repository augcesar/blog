class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:destroy]

  # POST /comentarios
  # POST /comentarios.json
  def create
    @comentario         = Comentario.new(comentario_params)
    @comentario.artigo  = Artigo.find(params[:artigo_id])
    @comentario.usuario = current_usuario

    respond_to do |format|
      if @comentario.save
        format.html { redirect_to home_path }
      else
        format.html { redirect_to home_path }
      end
    end
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    @comentario.destroy
    respond_to do |format|
      format.html { redirect_to comentarios_url, notice: 'Comentario was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_params
      params.require(:comentario).permit(:artigo_id, :descricao)
    end
end
