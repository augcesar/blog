class HomeController < ApplicationController

  # GET /home
  def index
    @artigos = Artigo.includes(:comentarios).publicados
  end

end
