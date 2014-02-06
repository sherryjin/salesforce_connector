require "salesforce_connector/version"

module SalesforceConnector
  class Client
    
    def self.object_types
      client.list_sobjects
    end

    def self.account
      client.materialize("Account")
    end

    def self.lead
      client.materialize("Lead")
    end

    def self.opportunity
      client.materialize("Opportunity")
    end

    def self.contact
      client.materialize("Contact")
    end

    private

    def self.client
      dbdc_client = Databasedotcom::Client.new(
          :client_id      => SALESFORCE_AUTH_PARAMS[:client_id],
          :client_secret  => SALESFORCE_AUTH_PARAMS[:client_secret],
          :host           => SALESFORCE_AUTH_PARAMS[:host],
          :verify_mode    => OpenSSL::SSL::VERIFY_NONE)
      dbdc_client.authenticate(:username => SALESFORCE_AUTH_PARAMS[:email], :password => SALESFORCE_AUTH_PARAMS[:password])
      dbdc_client.sobject_module = SalesforceConnector

      dbdc_client
    end
  end
end
