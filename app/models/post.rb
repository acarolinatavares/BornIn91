class Post < ActiveRecord::Base
  attr_accessible :corpo, :titulo, :usuario_id
  belongs_to :usuario

  def autor
    usuario.name
  end

end
