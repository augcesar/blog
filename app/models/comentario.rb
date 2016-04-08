class Comentario < ActiveRecord::Base
  belongs_to :artigo
  belongs_to :usuario

  validates :artigo, :descricao, presence: true
  validates :descricao, :uniqueness => {:scope => [:artigo_id, :descricao]}
end
