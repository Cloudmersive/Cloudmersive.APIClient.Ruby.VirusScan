=begin
#virusapi

#The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveVirusScanApiClient::ScanApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ScanApi' do
  before do
    # run before each test
    @instance = CloudmersiveVirusScanApiClient::ScanApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ScanApi' do
    it 'should create an instance of ScanApi' do
      expect(@instance).to be_instance_of(CloudmersiveVirusScanApiClient::ScanApi)
    end
  end

  # unit tests for scan_file
  # Scan a file for viruses
  # Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param input_file Input file to perform the operation on.
  # @param [Hash] opts the optional parameters
  # @return [VirusScanResult]
  describe 'scan_file test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_file_advanced
  # Advanced Scan a file for viruses
  # Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param input_file Input file to perform the operation on.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :allow_executables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_invalid_files Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_scripts Set to false to block script files, such as a PHP files, Pythong scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [String] :restrict_file_types Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
  # @return [VirusScanAdvancedResult]
  describe 'scan_file_advanced test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_website
  # Scan a website for malicious content and threats
  # Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).
  # @param input 
  # @param [Hash] opts the optional parameters
  # @return [WebsiteScanResult]
  describe 'scan_website test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
