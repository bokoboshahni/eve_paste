# frozen_string_literal: true

require_relative 'lib/eve_paste/version'

Gem::Specification.new do |spec|
  spec.name = 'eve_paste'
  spec.version = EVEPaste::VERSION
  spec.authors = ['Bokobo Shahni']
  spec.email = ['shahni@bokobo.space']

  spec.summary = 'Parser for EVE Online paste formats'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/bokoboshahni/eve_paste'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/bokoboshahni/eve_paste'
  spec.metadata['changelog_uri'] = 'https://github.com/bokoboshahni/eve_paste/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'
end
