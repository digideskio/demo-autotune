redis: redis-server
resque_worker: bundle exec rake environment resque:work QUEUE=default TERM_CHILD=1
rails: bundle exec unicorn_rails -p 3000 -c config/unicorn.rb
