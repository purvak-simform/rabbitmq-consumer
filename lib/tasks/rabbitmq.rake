# here we are connecting our Dashboard (consumer) to our User (producer) by creating the queue (dashboard.user).
namespace :rabbitmq do
  desc "Connect consumer to producer user"
  task :setup do
    require "bunny"
    # establish connection to rabbit
    conn = Bunny.new.tap(&:start)
    ch = conn.create_channel
    queue_users = ch.queue("dashboard.users", durable: true)
    # bind queue to exchange
    queue_users.bind("user.users")
    conn.close
  end
end