class Usuario < ActiveRecord::Base
  attr_accessible :access_token, :email, :name, :photo_url, :provider, :uid, :moderador
  has_many :posts
  has_many :comentarios


  def self.find_or_create_with_omniauth(auth)
    usuario = self.find_or_create_by_provider_and_uid(auth.provider, auth.uid)
    usuario.assign_attributes({ name: auth.info.name, email: auth.info.email, photo_url: auth.info.image, access_token: auth.credentials.token })
    usuario.save!
    usuario
  end

  def self.moderador?
    return self.moderador
  end

end
