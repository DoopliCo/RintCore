# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rint_core/version'

Gem::Specification.new do |gem|
  gem.name                       = "rintcore"
  gem.version                    = RintCore::VERSION
  gem.authors                    = ["Kaz Walker","Rob Gilson"]
  gem.email                      = ["kaz.walker@doopli.co"]
  gem.description                = %q{RepRap/GCode utilities written in Ruby.}
  gem.summary                    = %q{A Ruby implementation of PrintCore.}
  gem.homepage                   = "https://github.com/KazW/RintCore"

  gem.files                      = `git ls-files`.split($/)
  gem.executables                = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files                 = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths              = ["lib"]
  gem.add_runtime_dependency     'serialport', '1.1.0'
  gem.add_runtime_dependency     'activesupport'
  gem.add_development_dependency 'rake'
end
