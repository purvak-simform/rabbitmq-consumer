class UserConsumerWorker
  include Sneakers::Worker

  from_queue "dashboard.users", env: nil

  # The work method allow to retrieve data
  def work(raw_user)
    User.push(raw_user)
    # The ack! keyword means “acknowledge”, it will notify the producer that the message has been received.
    ack!
  end
end

# WORKERS=UserConsumerWorker bundle exec rake sneakers:run
