require 'rspec'
require_relative '../my_class'

RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

describe MyClass do
  specify { expect(MyClass.new.foo).to eq(1) }
end

