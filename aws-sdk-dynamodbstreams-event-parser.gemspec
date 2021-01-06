# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "aws-sdk-dynamodbstreams-event-parser"
  spec.version       = '1.0.0'
  spec.authors       = ["Julien D."]
  spec.email         = ["julien@pocketsizesun.com"]

  spec.summary       = "DynamoDB Streams event parser"
  spec.description   = "DynamoDB Streams event parser"
  spec.homepage      = "https://github.com/pocketsizesun/aws-sdk-dynamodbstreams-event-parser-ruby"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/pocketsizesun/aws-sdk-dynamodbstreams-event-parser-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/pocketsizesun/aws-sdk-dynamodbstreams-event-parser-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'aws-sdk-dynamodb-attribute-deserializer', '~> 1.0'
end