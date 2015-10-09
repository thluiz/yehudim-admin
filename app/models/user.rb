class User < ActiveRecord::Base
  def self.find_from_auth_hash(access_token) 
    return find_for_google_oauth2(access_token) if access_token["provider"] == "google_oauth2"
    return find_for_facebook(access_token) if access_token["provider"] == "facebook"
  end
  
  private 
  
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    User.where(:email => data["email"]).first
  end
  
  def self.find_for_facebook(access_token, signed_in_resource=nil)
    data = access_token.info
    User.where(:email => data["email"]).first
  end
end
