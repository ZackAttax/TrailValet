Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
    #provider :strava, Rails.application.secrets.strava_client_id, Rails.application.secrets.strava_api_key, scope: 'read'

  end 