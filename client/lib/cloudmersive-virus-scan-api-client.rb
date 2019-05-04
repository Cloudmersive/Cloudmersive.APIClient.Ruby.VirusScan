=begin
#virusapi

#Virus API lets you scan files and content for viruses and identify security issues with content.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

# Common files
require 'cloudmersive-virus-scan-api-client/api_client'
require 'cloudmersive-virus-scan-api-client/api_error'
require 'cloudmersive-virus-scan-api-client/version'
require 'cloudmersive-virus-scan-api-client/configuration'

# Models
require 'cloudmersive-virus-scan-api-client/models/virus_found'
require 'cloudmersive-virus-scan-api-client/models/virus_scan_result'
require 'cloudmersive-virus-scan-api-client/models/website_scan_request'
require 'cloudmersive-virus-scan-api-client/models/website_scan_result'

# APIs
require 'cloudmersive-virus-scan-api-client/api/scan_api'

module CloudmersiveVirusScanApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   CloudmersiveVirusScanApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
