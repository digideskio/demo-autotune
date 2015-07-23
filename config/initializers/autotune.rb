# Be sure to restart your server when you modify this file.

# For notifications
Autotune.redis = Redis.new(:host => ENV['REDIS_SERVER'])

# Where should the `FAQ` link go?
Rails.configuration.autotune.faq_url = \
  'http://voxmedia.helpscoutdocs.com/category/19-autotune'

# Environment variables used when building blueprints
Rails.configuration.autotune.build_environment = {
  # 'AWS_ACCESS_KEY_ID' => ENV['AWS_ACCESS_KEY_ID'],
  # 'AWS_SECRET_ACCESS_KEY' => ENV['AWS_SECRET_ACCESS_KEY'],

  # 'GOOGLE_OAUTH_PERSON' => ENV['GOOGLE_OAUTH_PERSON'],
  # 'GOOGLE_OAUTH_ISSUER' => ENV['GOOGLE_OAUTH_ISSUER'],
  # 'GOOGLE_OAUTH_KEYFILE' => ENV['GOOGLE_OAUTH_KEYFILE'],

  'ENV' => Rails.env
}

# These are the environment variables used during git operations
Rails.configuration.autotune.setup_environment = {
  'GIT_HTTP_USERNAME' => ENV['GIT_HTTP_USERNAME'],
  'GIT_HTTP_PASSWORD' => ENV['GIT_HTTP_PASSWORD'],
  'GIT_ASKPASS' => Rails.configuration.autotune.git_askpass,

  'GIT_PRIVATE_KEY' => ENV['GIT_PRIVATE_KEY'],
  'GIT_SSH' => Rails.configuration.autotune.git_ssh,

  'ENV' => Rails.env
}

# Enabled blueprint themes
Rails.configuration.autotune.themes = {
# :theme_name  => 'Nice display name',
  :generic     => 'Generic',
  :mynewsorg   => 'My news organization'
}

# -------------------------------
# Deployment
# -------------------------------
# Autotune has deployment targets; preview, publish and media. New projects
# are always deployed to the preview target. Projects are deployed to the
# publish target when a user clicks the publish button. Media is used to store
# thumbnails and other things.

# # Deployment settings for production
# if Rails.env == 'production'
#   Rails.configuration.autotune.preview = {
#     :connect => 's3://apps.newsorg.com/at-preview',
#     :base_url => '//apps.newsorg.com/at-preview'
#   }
#   Rails.configuration.autotune.publish = {
#     :connect => 's3://apps.newsorg.com/at',
#     :base_url => '//apps.newsorg.com/at'
#   }
#   Rails.configuration.autotune.media = {
#     :connect => 's3://apps.newsorg.com/at-media',
#     :base_url => 'https://apps.newsorg.com/at-media'
#   }
# # Deployment settings for staging
# elsif Rails.env == 'staging'
#   Rails.configuration.autotune.preview = {
#     :connect => 's3://test.newsorg.com/at-preview',
#     :base_url => '//test.newsorg.com/at-preview'
#   }
#   Rails.configuration.autotune.publish = {
#     :connect => 's3://test.newsorg.com/at',
#     :base_url => '//test.newsorg.com/at'
#   }
#   Rails.configuration.autotune.media = {
#     :connect => 's3://test.newsorg.com/at-media',
#     :base_url => 'http://test.newsorg.com/at-media'
#   }
# end

# -------------------------------
# Authentication
# -------------------------------
# Auth is handled by a configurable callback you can define here. The
# callback is passed an omniauth object and can return different things
# depending on how you want auth to work. See the Wiki.

Rails.configuration.autotune.verify_omniauth = lambda do |omniauth|
  Rails.logger.debug omniauth
  # give this user complete access
  return [:superuser] # or return true
  # refuse access to a user
  # return false
  # give editor access
  # return [:editor]
  # give author access
  # return [:author]
  # give author access to specific themes
  # return :author => [:mynewsorg]
  # give editor access to specific themes
  # return :editor => [:mynewsorg, :generic]
end
