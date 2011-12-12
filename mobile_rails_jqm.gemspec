# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mobile_rails_jqm/version"

Gem::Specification.new do |s|
  s.name        = "mobile_rails_jqm"
  s.version     = MobileRailsJqm::VERSION
  s.authors     = ["Hisea"]
  s.email       = ["zyinghai@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A gem packaged with Jquery Mobile and a generator to work with mobile_rails gem}
  s.description = %q{A gem packaged with Jquery Mobile and a generator to work with mobile_rails gem}

  s.rubyforge_project = "mobile_rails_jqm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
