require_relative 'lib/chi_res/version'

Gem::Specification.new do |spec|
  spec.name          = "chi_res"
  spec.version       = ChiRes::VERSION
  spec.authors       = ["noe"]
  spec.email         = ["noe.reyes92@yahoo.com"]

  spec.summary       = "COVID 19 Chicago Resources"
  spec.description   = "longer description"
  spec.homepage      = "https://github.com/reyes2981/chi_res"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/reyes2981/chi_res"
  spec.metadata["changelog_uri"] = "/home/no3/dev/flatiron/chi_res/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
