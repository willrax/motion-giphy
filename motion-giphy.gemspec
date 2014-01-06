# -*- encoding: utf-8 -*-
VERSION = "1.2.0"

Gem::Specification.new do |spec|
  spec.name          = "motion-giphy"
  spec.version       = VERSION
  spec.authors       = ["Will Raxworthy"]
  spec.email         = ["git@willrax.com"]
  spec.description   = %q{Giphy API wrapper for RubyMotion}
  spec.summary       = %q{Giphy API wrapper for RubyMotion}
  spec.homepage      = ""
  spec.license       = ""

  files = []
  files << "README.md"
  files.concat(Dir.glob("lib/**/*.rb"))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "motion-cocoapods"
  spec.add_dependency "afmotion"
  spec.add_development_dependency "rake"
end
