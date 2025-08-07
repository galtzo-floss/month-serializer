# NOTE: Have to use __FILE__ until Ruby 1.x support is dropped
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "month/serializer/version"

Gem::Specification.new do |spec|
  spec.name = "month-serializer"
  spec.version = Month::Serializer::VERSION
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  spec.summary = "Serialize Month objects to Integer"
  spec.description = "Serialize Month objects to Integer"
  spec.homepage = "https://github.com/pboling/month-serializer"
  spec.license = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = %x(git ls-files -z).split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 1.9.3"

  spec.add_runtime_dependency("month", ">= 1.4.0")                      # ruby >= 1.9.3, v2 is ruby >= 2.6

  # Release Tasks
  spec.add_development_dependency("stone_checksums", "~> 1.0")          # ruby >= 2.2.0

  ### Testing
  spec.add_development_dependency("appraisal2", "~> 3.0")               # ruby >= 1.8.7
  spec.add_development_dependency("rspec", "~> 3.13")                   # ruby >= 0
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0")  # ruby >= 1.8.7
  spec.add_development_dependency("rspec_junit_formatter", "~> 0.6")    # Ruby >= 2.3.0, for GitLab Test Result Parsing
  spec.add_development_dependency("rspec-pending_for", "~> 0.1", ">= 0.1.17") # ruby >= 1.8.7

  # Development tasks
  spec.add_development_dependency("rake", "~> 13.0")                    # ruby >= 2.2
end
