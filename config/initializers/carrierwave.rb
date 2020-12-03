CarrierWave.configure do |config|
	config.fog_provider = 'fog/google'
    config.fog_credentials = {
        provider:                         'Google',
        google_storage_access_key_id:     'GOOGWPYMPUNQDJYW7MTK6AJI',
        google_storage_secret_access_key: '9UxUtZB7yaaVfdmaCfSCn1qB+Ka9z639J7qPZt9A'
    }
    config.fog_directory = 'bocket-tienda-ruby'
  
end