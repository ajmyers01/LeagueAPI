# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'league/version'

Gem::Specification.new do |spec|
  spec.name          = "league"
  spec.version       = League::VERSION
  spec.authors       = ["ajmyers01"]
  spec.email         = ["myers3162002@gmail.com"]
  spec.summary       = %q{ruby gem to interact with the league of legends api.}
  spec.description   = %q{ruby gem to interact with the League of Legends api.}
  spec.homepage      = "https://github.com/ajmyers01/LeagueAPI"
  spec.license       = "mit"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| file.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday_middleware"
  spec.add_dependency "hashie"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-debugger"
end
