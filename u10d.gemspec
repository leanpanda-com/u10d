lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) if !$LOAD_PATH.include?(lib)
require "u10d/version"

Gem::Specification.new do |spec|
  spec.name          = "u10d"
  spec.version       = U10d::VERSION
  spec.authors       = ["Joe Yates"]
  spec.email         = ["j.yates@leanpanda.com"]

  spec.summary       = "Untranslated language names for i18n."
  spec.description   = <<~MESSAGE
    Get the name of any language in its original language.
    This is useful for GUI language switchers.
  MESSAGE
  spec.homepage      = "https://github.com/leanpanda-com/u10n"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "i18n"

  spec.add_development_dependency "bundler", ">= 1.14"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.70"
  spec.add_development_dependency "rubocop-rspec", "~> 1.33"
end
