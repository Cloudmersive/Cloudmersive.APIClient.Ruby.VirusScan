# -*- encoding: utf-8 -*-

=begin
#virusapi

#The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

$:.push File.expand_path("../lib", __FILE__)
require "cloudmersive-virus-scan-api-client/version"

Gem::Specification.new do |s|
  s.name        = "cloudmersive-virus-scan-api-client"
  s.version     = CloudmersiveVirusScanApiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cloudmersive"]
  s.email       = [""]
  s.homepage    = "https://www.cloudmersive.com/virus-api"
  s.summary     = "Scan files and content for viruses."
  s.description = "Virus API lets you scan files and content for viruses and identify security issues with content."
  s.license     = 'Apache 2.0'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
