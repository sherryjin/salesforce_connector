# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'salesforce_connector/version'

Gem::Specification.new do |gem|
  gem.name          = "salesforce_connector"
  gem.version       = SalesforceConnector::VERSION
  gem.authors       = ["Sherry Jin"]
  gem.email         = ["sherry@newrelic.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'databasedotcom', '~> 1.3.2'
  gem.add_development_dependency "rspec", "~> 2.6" 
  gem.add_development_dependency "pry"
  gem.add_development_dependency "pry-nav"
end
