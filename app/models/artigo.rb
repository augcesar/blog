class Artigo < ActiveRecord::Base
  scope :publicados, -> { where publicar: true }

  belongs_to :usuario
  has_many :comentarios
  
  validates :titulo, :descricao, :usuario, presence: true
end
