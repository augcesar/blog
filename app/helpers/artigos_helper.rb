module ArtigosHelper
  def help_artigo_publicado artigo
    tipo_botao = if artigo.publicar 
      'btn-success'
    else
      'btn-danger'
    end

    button_tag(type: 'button', class:"btn #{tipo_botao} btn-sm") do
      content_tag(:strong, '!!!')
    end
  end
end
