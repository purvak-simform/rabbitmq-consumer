class User
  KEY = "user"
  STORE_LIMIT = 10

  def self.list(limit = STORE_LIMIT)
    $redis.lrange(KEY, 0, limit).map do |raw_users|
      JSON.parse(raw_users)
    end
  end

  def self.push(raw_users)
    $redis.lpush(KEY, raw_users)
    $redis.ltrim(KEY, 0, STORE_LIMIT-1)
  end
end
