Rails.application.config.before_initialize do
  # initialization code goes here
  
  config = YAML.load(File.read(File.expand_path('~/ytv.yml')))
  Rails.logger.info "TOTAL ENV" + config.count.to_s
  config.each do |key, value|        
    Rails.logger.info "SETTING :: " + key
    ENV[key.to_s] = value
  end

end