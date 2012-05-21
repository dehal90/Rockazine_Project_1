Chatter::Application.configure do

  config.cache_classes = false

  config.whiny_nils = true

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log
 # Send emails via Gmail
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => 'gmail.com',
    :user_name            => 'jetinderdehal@gmail.com',
    :password             => 'Z',
    :authentication       => 'plain',
    :enable_starttls_auto => true  }
  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end

