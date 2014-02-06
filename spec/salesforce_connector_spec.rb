require 'salesforce_connector'
require 'pry'
require 'databasedotcom'

describe SalesforceConnector::Client do
  it "should return some stuff" do
    SalesforceConnector::Client.should_not be_nil
  end
end