# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["codegourmet"]
  gem.email         = ["mail@codegourmet.de"]
  gem.description   = %q{Lorem ipsum generator}
  gem.summary       = %q{Localized keys for Rails/MongoMapper models}
  gem.homepage      = "http://github.com/codegourmet/lipsum"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "lipsum"
  gem.require_paths = ["lib"]
  gem.version       = Lipsum::VERSION

  gem.add_dependency "rails", ">= 3.2.3"

  #gem.add_development_dependency 'pry'
  #gem.add_development_dependency 'pry-debugger'
end
