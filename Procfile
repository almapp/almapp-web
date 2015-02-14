redis: redis-server
web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -c 5 -v
clock: bundle exec clockwork lib/clock.rb