OmniAuth.config.logger = Rails.logger
Rails.configuration.omniauth_preferred_provider = Rails.env.production? ? :github : :developer
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end
