# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "html5_boilerplate_asset_pack/version"

Gem::Specification.new do |s|
  s.name        = "html5_boilerplate_asset_pack"
  s.version     = Html5BoilerplateAssetPack::VERSION
  s.authors     = ["Jesse House"]
  s.email       = ["jesse.house@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = File.open('README.rdoc') { |f| f.read }

  s.rubyforge_project = "html5_boilerplate_asset_pack"
  
  s.add_dependency 'rails', '~> 3.1.0.rc'
  s.add_dependency 'javascript_safe_logger', '~> 0.0.3'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
