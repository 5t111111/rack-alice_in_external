# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/alice_in_external/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-alice_in_external"
  spec.version       = Rack::AliceInExternal::VERSION
  spec.authors       = ["Hirofumi Wakasugi"]
  spec.email         = ["baenej@gmail.com"]

  spec.summary       = %q{Rough and dirty stubbing for authentication via Sorcery external}
  spec.description   = %q{Rough and dirty stubbing for authentication via Sorcery external (GitHub only for the moment)}
  spec.homepage      = "https://github.com/5t111111/rack-alice_in_external"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "webmock", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rack-test", "~> 0.6"
  spec.add_development_dependency "faraday", "~> 0.9"
end
