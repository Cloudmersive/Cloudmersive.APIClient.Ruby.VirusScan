=begin
#virusapi

#The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CloudmersiveVirusScanApiClient::VirusScanAdvancedResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VirusScanAdvancedResult' do
  before do
    # run before each test
    @instance = CloudmersiveVirusScanApiClient::VirusScanAdvancedResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VirusScanAdvancedResult' do
    it 'should create an instance of VirusScanAdvancedResult' do
      expect(@instance).to be_instance_of(CloudmersiveVirusScanApiClient::VirusScanAdvancedResult)
    end
  end
  describe 'test attribute "clean_result"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contains_executable"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contains_invalid_file"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contains_script"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contains_restricted_file_format"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "verified_file_format"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "found_viruses"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
