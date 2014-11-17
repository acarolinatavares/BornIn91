class Post < ActiveRecord::Base
  attr_accessible :corpo, :titulo, :usuario_id
  belongs_to :usuario
  has_many :comentario

  def autor
    usuario.name
  end

end
