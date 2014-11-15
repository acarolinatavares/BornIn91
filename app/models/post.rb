class Post < ActiveRecord::Base
  attr_accessible :corpo, :titulo, :usuario_id
end
