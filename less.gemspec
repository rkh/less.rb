# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "less/version"

Gem::Specification.new do |s|
  s.name        = "less"
  s.version     = Less::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Charles Lowell"]
  s.email       = ["cowboyd@thefrontside.net"]
  s.homepage    = "http://github.com/cowboyd/less.rb"
  s.summary     = %q{Leaner CSS, in your browser or Ruby (via less.js)}
  s.description = %q{Invoke the Less CSS compiler from Ruby (http://lesscss.org)}

  s.rubyforge_project = "less"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "therubyracer", "~> 0.9.0beta5"
  s.add_development_dependency "rake", "~> 0.8.0"
  s.add_development_dependency "rspec", "~> 2.0"
end
