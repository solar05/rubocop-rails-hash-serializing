# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/hashserializer'
require_relative 'rubocop/hashserializer/version'
require_relative 'rubocop/hashserializer/inject'

RuboCop::Hashserializer::Inject.defaults!

require_relative 'rubocop/cop/hashserializer_cops'
