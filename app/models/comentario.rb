class Comentario < ActiveRecord::Base
  attr_accessible :corpo, :post_id, :usuario_id

  belongs_to :post
  belongs_to :usuario

end
