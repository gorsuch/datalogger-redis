require 'json'
require 'redis'
require 'uri'

module DataLogger
  class RedisListSink
    VERSION='0.0.1'

    def initialize(opts={})
      redis_url = opts[:redis_url] || "redis://localhost:6379"
      uri = URI.parse(redis_url)
      @redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
      @list = opts[:list] || 'logs'
    end

    def log(component, data)
      @redis.rpush @list, data.merge(component: component).to_json  
    end
  end
end
