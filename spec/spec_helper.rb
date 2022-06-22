# frozen_string_literal: true

require 'simplecov'

SimpleCov.start do
  enable_coverage :branch
end

require 'eve_paste'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.default_formatter = 'doc' if config.files_to_run.one?
  config.example_status_persistence_file_path = '.rspec_status'
  config.order = :random
  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.mock_with :rspec do |c|
    c.verify_partial_doubles = true
  end
end
