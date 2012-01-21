# DataLogger-Redis
A DataLogger data sink that sends data to redis, either via pubsub or lists.

## Usage

```ruby
require 'datalogger'
require 'datalogger/redis'

l = DataLogger::Logger.new('myapp')
l.sinks << DataLogger::Sinks::RedisPubSub.new
l.log a: 1, b: 2
```
