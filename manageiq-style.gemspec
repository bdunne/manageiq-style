require_relative 'lib/manageiq/style/version'

Gem::Specification.new do |spec|
  spec.name          = "manageiq-style"
  spec.version       = Manageiq::Style::VERSION
  spec.authors       = ["Brandon Dunne"]
  spec.email         = ["brandondunne@hotmail.com"]

  spec.summary       = "Style and linting configuration for ManageIQ projects."
  spec.description   = "Style and linting configuration for ManageIQ projects."
  spec.homepage      = "https://github.com/ManageIQ/manageiq-style"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "haml_lint", "~> 0.35.0"
  spec.add_runtime_dependency "rubocop",   "~> 0.82.0"
  spec.add_runtime_dependency "rubocop-performance"
  spec.add_runtime_dependency "rubocop-rails"
end
