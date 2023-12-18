# README

This is a RabbitMQ consumer app.

* Link for local RabbitMQ UI dashboard to see updates
   http://localhost:15672

Things you may want to cover:

### Gems
  ```ruby
  gem 'redis-rails'                                               
  gem 'redis-namespace'                      
  gem 'sneakers'
  gem 'bunny'
  ```

### Commands
  * rails rabbitmq:setup
  * rails s -p 4001
  * redis-server
      *(If redis-server shows already running then run command
      **sudo service redis-server stop**)*
  * WORKERS=UserConsumerWorker bundle exec rake sneakers:run

