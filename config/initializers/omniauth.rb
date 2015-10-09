Rails.application.config.middleware.use OmniAuth::Builder do    
  Rails.logger.info "omniauth :: ENV NOT FOUND ::" if ENV['GOOGLE_CLIENT_ID'].nil? 
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], :scope => 'email,public_profile'
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]  
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']    
end