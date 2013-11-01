require 'colourer'
require 'approvals/rspec'

RSpec.configure do |config|
  config.approvals_path = 'spec/fixtures/approvals/'
end
