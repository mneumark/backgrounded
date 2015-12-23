# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "backgrounded/version"

Gem::Specification.new do |s|
  s.name        = "backgrounded"
  s.version     = Backgrounded::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ryan Sonnek"]
  s.email       = ["ryan@codecrate.com"]
  s.homepage    = "http://github.com/wireframe/backgrounded"
  s.summary     = %q{Simple API to perform work in the background}
  s.description = %q{Execute any ActiveRecord Model method in the background}

  s.rubyforge_project = "backgrounded"

  s.add_runtime_dependency(%q<activerecord>, [">= 2.3.10"])
  s.add_runtime_dependency(%q<activesupport>, [">= 2.3.10"])
  s.add_development_dependency('rspec')
  s.add_development_dependency(%q<sqlite3-ruby>, [">= 1.3.2"])
  s.add_development_dependency(%q<rake>, [">= 0.9.2.2"])
  s.add_development_dependency(%q<pry>, [">= 0.9.12"])
  s.add_development_dependency(%q<test_after_commit>, [">= 0"])

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
