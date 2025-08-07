# frozen_string_literal: true

# HOW TO UPDATE APPRAISALS:
#   BUNDLE_GEMFILE=Appraisal.root.gemfile bundle
#   BUNDLE_GEMFILE=Appraisal.root.gemfile bundle exec appraisal update
#   bundle exec rake rubocop_gradual:autocorrect

# Lock/Unlock Deps Pattern
#
# Two often conflicting goals resolved!
#
#  - deps_unlocked.yml
#    - All runtime & dev dependencies, but does not have a `gemfiles/*.gemfile.lock` committed
#    - Uses an Appraisal2 "deps_unlocked" gemfile, and the current MRI Ruby release
#    - Know when new dependency releases will break local dev with unlocked dependencies
#    - Broken workflow indicates that new releases of dependencies may not work
#
#  - deps_locked.yml
#    - All runtime & dev dependencies, and has a `Gemfile.lock` committed
#    - Uses the project's main Gemfile, and the current MRI Ruby release
#    - Matches what contributors and maintainers use locally for development
#    - Broken workflow indicates that a new contributor will have a bad time
#
appraise "deps_unlocked" do
end

# Used for head (nightly) releases of ruby, truffleruby, and jruby.
# Split into discrete appraisals if one of them needs a dependency constrained discretely.
appraise "head" do
end

# Used for current releases of ruby, truffleruby, and jruby.
# Split into discrete appraisals if one of them needs a dependency constrained discretely.
appraise "current" do
  gem "month", "~> 2.1"
end

appraise "ruby-2-3" do
  gem "month", "~> 1.4"
end

appraise "ruby-2-4" do
  gem "month", "~> 1.4"
end

appraise "ruby-2-5" do
  gem "month", "~> 1.4"
end

appraise "ruby-2-6" do
  gem "month", "~> 2.1"
end

appraise "ruby-2-7" do
  gem "month", "~> 2.1"
end

appraise "ruby-3-0" do
  gem "month", "~> 2.1"
end

appraise "ruby-3-1" do
  gem "month", "~> 2.1"
end

appraise "ruby-3-2" do
  gem "month", "~> 2.1"
end

appraise "ruby-3-3" do
  gem "month", "~> 2.1"
end

# Only run security audit on latest Ruby version
appraise "audit" do
  eval_gemfile "modular/audit.gemfile"
end

# Only run coverage on latest Ruby version
appraise "coverage" do
  eval_gemfile "modular/coverage.gemfile"
end

# Only run linter on latest Ruby version (but, in support of oldest supported Ruby version)
appraise "style" do
  eval_gemfile "modular/style.gemfile"
end
