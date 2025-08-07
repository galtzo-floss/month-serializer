require "bundler/setup"

# External Gems
require "rspec/pending_for"
require "rspec/block_is_expected"
require "rspec/block_is_expected/matchers/not"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with(:rspec) do |c|
    c.syntax = :expect
  end
end

# NOTE: Gemfiles for older rubies won't have kettle-soup-cover.
#       The rescue LoadError handles that scenario.
begin
  require "kettle-soup-cover"
  require "simplecov" if Kettle::Soup::Cover::DO_COV # `.simplecov` is run here!
rescue LoadError => error
  # check the error message, if you are so inclined, and re-raise if not what is expected
  raise error unless error.message.include?("kettle")
end

# This Gem
require "month/serializer"

# Setup
Month.send(:include, Month::Serializer)
