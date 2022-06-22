# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

require 'yard'
require 'yard/rake/yardoc_task'

YARD::Rake::YardocTask.new(:doc)

require 'github_changelog_generator/task'

GitHubChangelogGenerator::RakeTask.new(:changelog) do |config|
  config.user = 'bokoboshahni'
  config.project = 'eve_paste'
end

task default: %i[rubocop spec]
