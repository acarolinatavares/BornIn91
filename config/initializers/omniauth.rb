Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], :scope => "email"
  provider :twitter, TWITTER_CONFIG['consumer_key'], TWITTER_CONFIG['consumer_secret']
end