class Comentario < ActiveRecord::Base
  attr_accessible :corpo, :post_id, :usuario_id
end
