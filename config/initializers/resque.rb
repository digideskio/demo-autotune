Resque.redis = Redis.new(:url => ENV['REDIS_URL'] || 'redis://localhost:6379')
Resque.redis.namespace =  ENV['REDIS_NAMESPACE'] || 'resque:AutoTune'
