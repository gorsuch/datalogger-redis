# -*- encoding: utf-8 -*-
require File.expand_path('../lib/datalogger/redis/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michael Gorsuch"]
  gem.email         = ["michael.gorsuch@gmail.com"]
  gem.description   = %q{A DataLogger data sink to Redis}
  gem.summary       = %q{A DataLogger data sink to Redis}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "datalogger-redis"
  gem.require_paths = ["lib"]
  gem.version       = DataLogger::Redis::VERSION
  gem.add_dependency('datalogger')
  gem.add_dependency('json')
  gem.add_dependency('redis')
end
