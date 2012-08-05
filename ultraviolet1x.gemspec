$:.push File.expand_path("../lib", __FILE__)
require "uv/version"

Gem::Specification.new do |s|
  s.name                  = "ultraviolet"
  s.version               = Uv::Version
  s.authors               = ["Dizan Vasquez", "Spox", "Chris Hoffman", "Michael Grosser"]
  s.email                 = ["michael@grosser.it"]
  s.homepage              = "https://github.com/grosser/ultraviolet"
  s.summary               = "Ultraviolet syntax highlighting gem for Ruby18 and Ruby19"
  s.description           = s.summary
  s.license               = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  s.executables = ["theme2xhtmlrender", "theme2latexrender", "uv"]
  s.rdoc_options = ["--main", "README.rdoc"]

  s.add_dependency "textpow1x", '>=0.11.0'
end
