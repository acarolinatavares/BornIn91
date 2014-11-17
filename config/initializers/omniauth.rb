Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], :scope => "email"
  provider :twitter, 'TFbht02WdpuDPQWQHgGTET96W', 'ueN8mbr1RvT8CSxKXcIOf4bW8GHTbchuLQE7sejtVVDPxk96w8'
end