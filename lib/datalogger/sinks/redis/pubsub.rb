require 'json'
require 'redis'
require 'uri'

module DataLogger
  module Sinks
    class RedisPubSub
      def initialize(opts={})
        redis_url = opts[:redis_url] || "redis://localhost:6379"
        uri = URI.parse(redis_url)
        @redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
        @channel = opts[:channel] || 'logs'
      end

      def log(component, data)
        @redis.publish @channel, data.merge(component: component).to_json  
      end
    end
  end
end
