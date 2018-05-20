lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'lp/version'

Gem::Specification.new do |s|
  s.name        = 'lp'
  s.version     = LP::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Lovely print"
  s.description = "Lovely print"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.homepage    = 'https://github.com/dannyben/lp'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.4.0"

  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'runfile', '~> 0.10'
  s.add_development_dependency 'runfile-tasks', '~> 0.4'
end
