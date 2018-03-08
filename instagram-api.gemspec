
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "instagram/version"

Gem::Specification.new do |spec|
  spec.name          = "instagram-api"
  spec.version       = Instagram::VERSION
  spec.authors       = ["Roman Shoryn"]
  spec.email         = ["romanshoryn@gmail.com"]

  spec.summary       = "Instagram API gem"
  spec.description   = "Instagram API gem"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "httparty", "~> 0.13.7"
end
