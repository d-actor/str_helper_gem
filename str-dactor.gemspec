
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str/dactor/version"

Gem::Specification.new do |spec|
  spec.name          = "str-dactor"
  spec.version       = Str::Dactor::VERSION
  spec.authors       = ["Dan Actor"]
  spec.email         = ["danltactor@gmail.com"]

  spec.summary       = "Learning how to build a gem."
  spec.description   = "Learning how to publish a gem."
  spec.homepage      = "https://github.com/d-actor/str_helper_gem"
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
end
