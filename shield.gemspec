lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shield/version'

Gem::Specification.new do |spec|
  spec.name          = 'shield'
  spec.version       = Shield::VERSION
  spec.authors       = ['Jacob Bednarz']
  spec.email         = ['jacob.bednarz@gmail.com']

  spec.summary       = %q{A tool for protecting your application and infrastructure}
  spec.description   = %q{A tool for protecting your application and infrastructure}
  spec.homepage      = 'https://github.com/jacobbednarz/shield'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rspec'
end
