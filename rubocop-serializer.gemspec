# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-serializer'
  spec.version       = '0.0.1'
  spec.authors       = ['Artem Solomatin']
  spec.email         = ['artem00298@gmail.com']

  spec.summary       = 'Model attributes serialize to hash checker.'
  # rubocop:disable Layout/LineLength
  spec.description   = 'When we save data, Active Record provides us a method serialize, which helps us to save object params in JSON or YAML format. If we do not work with raw data, it is OK, but if we try to query raw data (for analytics purposes, for example) it becomes a headache. For JSON format it is not so critical, because databases provide functionality for work with JSON data, but for YAML there is no such functionality, which causes troubles for raw data querying.'
  # rubocop:enable Layout/LineLength
  spec.homepage      = 'https://github.com/solar05/rubocop-rails-hash-serializing.git'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/solar05/rubocop-rails-hash-serializing.git'
  spec.metadata['changelog_uri'] = 'https://github.com/solar05/rubocop-rails-hash-serializing/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_runtime_dependency 'rubocop'
end
