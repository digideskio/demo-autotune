worker: bundle exec rake environment resque:work QUEUE=default TERM_CHILD=1
web: bundle exec unicorn_rails -p $PORT -c config/unicorn.rb
