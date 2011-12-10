# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "track-plugins"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lars Kuhnt"]
  s.email       = ["lars.kuhnt@gmail.com"]
  s.homepage    = "http://github.com/larskuhnt/track-plugins"
  s.summary     = "Plugin collection for the rack based nano framework Track"
  s.description = "Plugin collection for the rack based nano framework Track, currently containing ActiveRecord and Sequel plugins"
  
  s.required_ruby_version = ">= 1.9"
  s.required_rubygems_version = ">= 1.3.6"
  
  s.add_dependency 'rack'
  s.add_development_dependency "rspec"
 
  s.files        = Dir.glob("lib/**/*") + %w(LICENSE README.md CHANGELOG.md)
  s.require_path = 'lib'
end
