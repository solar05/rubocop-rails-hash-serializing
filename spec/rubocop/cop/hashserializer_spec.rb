# frozen_string_literal: true

require 'spec_helper'

describe RuboCop::Cop::Rails::HashSerializer do
  subject(:cop) { described_class.new }

  it 'registers an offense when setting a default' do
    offenses = inspect_source('serialize :params, Hash')
    expect(offenses.size).to eq(1)
  end

  it 'does not register an offense when not setting a default' do
    offenses = inspect_source('serialize :params, JSON')
    expect(offenses).to be_empty
  end
end
