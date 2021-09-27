=begin
#virusapi

#The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveVirusScanApiClient::ScanCloudStorageApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ScanCloudStorageApi' do
  before do
    # run before each test
    @instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ScanCloudStorageApi' do
    it 'should create an instance of ScanCloudStorageApi' do
      expect(@instance).to be_instance_of(CloudmersiveVirusScanApiClient::ScanCloudStorageApi)
    end
  end

  # unit tests for scan_cloud_storage_scan_aws_s3_file
  # Scan an AWS S3 file for viruses
  # Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param access_key AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console
  # @param secret_key AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console
  # @param bucket_region Name of the region of the S3 bucket, such as &#39;US-East-1&#39;
  # @param bucket_name Name of the S3 bucket
  # @param key_name Key name (also called file name) of the file in S3 that you wish to scan for viruses
  # @param [Hash] opts the optional parameters
  # @return [CloudStorageVirusScanResult]
  describe 'scan_cloud_storage_scan_aws_s3_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_cloud_storage_scan_aws_s3_file_advanced
  # Advanced Scan an AWS S3 file for viruses
  # Advanced Scan the contents of a single AWS S3 file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param access_key AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console
  # @param secret_key AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console
  # @param bucket_region Name of the region of the S3 bucket, such as &#39;US-East-1&#39;
  # @param bucket_name Name of the S3 bucket
  # @param key_name Key name (also called file name) of the file in S3 that you wish to scan for viruses
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :allow_executables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_invalid_files Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_scripts Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_password_protected_files Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_macros Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_xml_external_entities Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  # @option opts [String] :restrict_file_types Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
  # @return [CloudStorageAdvancedVirusScanResult]
  describe 'scan_cloud_storage_scan_aws_s3_file_advanced test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_cloud_storage_scan_azure_blob
  # Scan an Azure Blob for viruses
  # Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param connection_string Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal.
  # @param container_name Name of the Blob container within the Azure Blob Storage account
  # @param blob_path Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;
  # @param [Hash] opts the optional parameters
  # @return [CloudStorageVirusScanResult]
  describe 'scan_cloud_storage_scan_azure_blob test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_cloud_storage_scan_azure_blob_advanced
  # Advanced Scan an Azure Blob for viruses
  # Advanced Scan the contents of a single Azure Blob and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param connection_string Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal.
  # @param container_name Name of the Blob container within the Azure Blob Storage account
  # @param blob_path Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :allow_executables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_invalid_files Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_scripts Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_password_protected_files Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_macros Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_xml_external_entities Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  # @option opts [String] :restrict_file_types Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
  # @return [CloudStorageAdvancedVirusScanResult]
  describe 'scan_cloud_storage_scan_azure_blob_advanced test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_cloud_storage_scan_gcp_storage_file
  # Scan an Google Cloud Platform (GCP) Storage file for viruses
  # Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param bucket_name Name of the bucket in Google Cloud Storage
  # @param object_name Name of the object or file in Google Cloud Storage
  # @param json_credential_file Service Account credential for Google Cloud stored in a JSON file.
  # @param [Hash] opts the optional parameters
  # @return [CloudStorageVirusScanResult]
  describe 'scan_cloud_storage_scan_gcp_storage_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_cloud_storage_scan_gcp_storage_file_advanced
  # Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses
  # Advanced Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
  # @param bucket_name Name of the bucket in Google Cloud Storage
  # @param object_name Name of the object or file in Google Cloud Storage
  # @param json_credential_file Service Account credential for Google Cloud stored in a JSON file.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :allow_executables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_invalid_files Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_scripts Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_password_protected_files Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_macros Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_xml_external_entities Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  # @option opts [String] :restrict_file_types Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
  # @return [CloudStorageAdvancedVirusScanResult]
  describe 'scan_cloud_storage_scan_gcp_storage_file_advanced test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_cloud_storage_scan_share_point_online_file
  # Virus Scan a file in a SharePoint Online Site Drive
  # Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.
  # @param client_id Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal.
  # @param client_secret Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal
  # @param sharepoint_domain_name SharePoint Online domain name, such as mydomain.sharepoint.com
  # @param site_id Site ID (GUID) of the SharePoint site you wish to retrieve the file from
  # @param file_path Path to the file within the drive, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_id Optional; Tenant ID of your Azure Active Directory
  # @return [CloudStorageVirusScanResult]
  describe 'scan_cloud_storage_scan_share_point_online_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for scan_cloud_storage_scan_share_point_online_file_advanced
  # Advanced Virus Scan a file in a SharePoint Online Site Drive
  # Advanced Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.
  # @param client_id Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal.
  # @param client_secret Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal
  # @param sharepoint_domain_name SharePoint Online domain name, such as mydomain.sharepoint.com
  # @param site_id Site ID (GUID) of the SharePoint site you wish to retrieve the file from
  # @param file_path Path to the file within the drive, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_id Optional; Tenant ID of your Azure Active Directory
  # @option opts [BOOLEAN] :allow_executables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_invalid_files Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_scripts Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_password_protected_files Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_macros Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  # @option opts [BOOLEAN] :allow_xml_external_entities Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  # @option opts [String] :restrict_file_types Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
  # @return [CloudStorageAdvancedVirusScanResult]
  describe 'scan_cloud_storage_scan_share_point_online_file_advanced test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
