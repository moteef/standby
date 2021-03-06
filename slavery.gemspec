# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'standby/version'

Gem::Specification.new do |gem|
  gem.post_install_message = 'The slavery gem has been deprecated and has ' \
                             'been replaced by standby. Please switch to ' \
                             'standby as soon as possible.'
  gem.name          = 'slavery'
  gem.version       = Standby::VERSION
  gem.authors       = ['Kenn Ejima']
  gem.email         = ['kenn.ejima@gmail.com']
  gem.description   = %q{Simple, conservative slave reads for ActiveRecord}
  gem.summary       = %q{Simple, conservative slave reads for ActiveRecord}
  gem.homepage      = 'https://github.com/kenn/slavery'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^exe/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'activerecord', '>= 3.0.0'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'sqlite3'
end
