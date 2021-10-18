# CloudmersiveVirusScanApiClient::ScanCloudStorageApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scan_cloud_storage_scan_aws_s3_file**](ScanCloudStorageApi.md#scan_cloud_storage_scan_aws_s3_file) | **POST** /virus/scan/cloud-storage/aws-s3/single | Scan an AWS S3 file for viruses
[**scan_cloud_storage_scan_aws_s3_file_advanced**](ScanCloudStorageApi.md#scan_cloud_storage_scan_aws_s3_file_advanced) | **POST** /virus/scan/cloud-storage/aws-s3/single/advanced | Advanced Scan an AWS S3 file for viruses
[**scan_cloud_storage_scan_azure_blob**](ScanCloudStorageApi.md#scan_cloud_storage_scan_azure_blob) | **POST** /virus/scan/cloud-storage/azure-blob/single | Scan an Azure Blob for viruses
[**scan_cloud_storage_scan_azure_blob_advanced**](ScanCloudStorageApi.md#scan_cloud_storage_scan_azure_blob_advanced) | **POST** /virus/scan/cloud-storage/azure-blob/single/advanced | Advanced Scan an Azure Blob for viruses
[**scan_cloud_storage_scan_gcp_storage_file**](ScanCloudStorageApi.md#scan_cloud_storage_scan_gcp_storage_file) | **POST** /virus/scan/cloud-storage/gcp-storage/single | Scan an Google Cloud Platform (GCP) Storage file for viruses
[**scan_cloud_storage_scan_gcp_storage_file_advanced**](ScanCloudStorageApi.md#scan_cloud_storage_scan_gcp_storage_file_advanced) | **POST** /virus/scan/cloud-storage/gcp-storage/single/advanced | Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses
[**scan_cloud_storage_scan_share_point_online_file**](ScanCloudStorageApi.md#scan_cloud_storage_scan_share_point_online_file) | **POST** /virus/scan/cloud-storage/sharepoint-online/site/single | Virus Scan a file in a SharePoint Online Site Drive
[**scan_cloud_storage_scan_share_point_online_file_advanced**](ScanCloudStorageApi.md#scan_cloud_storage_scan_share_point_online_file_advanced) | **POST** /virus/scan/cloud-storage/sharepoint-online/site/advanced | Advanced Virus Scan a file in a SharePoint Online Site Drive


# **scan_cloud_storage_scan_aws_s3_file**
> CloudStorageVirusScanResult scan_cloud_storage_scan_aws_s3_file(access_key, secret_key, bucket_region, bucket_name, key_name)

Scan an AWS S3 file for viruses

Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

access_key = 'access_key_example' # String | AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console

secret_key = 'secret_key_example' # String | AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console

bucket_region = 'bucket_region_example' # String | Name of the region of the S3 bucket, such as 'US-East-1'

bucket_name = 'bucket_name_example' # String | Name of the S3 bucket

key_name = 'key_name_example' # String | Key name (also called file name) of the file in S3 that you wish to scan for viruses


begin
  #Scan an AWS S3 file for viruses
  result = api_instance.scan_cloud_storage_scan_aws_s3_file(access_key, secret_key, bucket_region, bucket_name, key_name)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_aws_s3_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_key** | **String**| AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console | 
 **secret_key** | **String**| AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console | 
 **bucket_region** | **String**| Name of the region of the S3 bucket, such as &#39;US-East-1&#39; | 
 **bucket_name** | **String**| Name of the S3 bucket | 
 **key_name** | **String**| Key name (also called file name) of the file in S3 that you wish to scan for viruses | 

### Return type

[**CloudStorageVirusScanResult**](CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_cloud_storage_scan_aws_s3_file_advanced**
> CloudStorageAdvancedVirusScanResult scan_cloud_storage_scan_aws_s3_file_advanced(access_key, secret_key, bucket_region, bucket_name, key_name, opts)

Advanced Scan an AWS S3 file for viruses

Advanced Scan the contents of a single AWS S3 file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

access_key = 'access_key_example' # String | AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console

secret_key = 'secret_key_example' # String | AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console

bucket_region = 'bucket_region_example' # String | Name of the region of the S3 bucket, such as 'US-East-1'

bucket_name = 'bucket_name_example' # String | Name of the S3 bucket

key_name = 'key_name_example' # String | Key name (also called file name) of the file in S3 that you wish to scan for viruses

opts = { 
  allow_executables: true, # BOOLEAN | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  allow_invalid_files: true, # BOOLEAN | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  allow_scripts: true, # BOOLEAN | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  allow_password_protected_files: true, # BOOLEAN | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  allow_macros: true, # BOOLEAN | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  allow_xml_external_entities: true, # BOOLEAN | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  restrict_file_types: 'restrict_file_types_example' # String | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
}

begin
  #Advanced Scan an AWS S3 file for viruses
  result = api_instance.scan_cloud_storage_scan_aws_s3_file_advanced(access_key, secret_key, bucket_region, bucket_name, key_name, opts)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_aws_s3_file_advanced: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_key** | **String**| AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console | 
 **secret_key** | **String**| AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console | 
 **bucket_region** | **String**| Name of the region of the S3 bucket, such as &#39;US-East-1&#39; | 
 **bucket_name** | **String**| Name of the S3 bucket | 
 **key_name** | **String**| Key name (also called file name) of the file in S3 that you wish to scan for viruses | 
 **allow_executables** | **BOOLEAN**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional] 
 **allow_invalid_files** | **BOOLEAN**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional] 
 **allow_scripts** | **BOOLEAN**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_password_protected_files** | **BOOLEAN**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_macros** | **BOOLEAN**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_xml_external_entities** | **BOOLEAN**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional] 
 **restrict_file_types** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional] 

### Return type

[**CloudStorageAdvancedVirusScanResult**](CloudStorageAdvancedVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_cloud_storage_scan_azure_blob**
> CloudStorageVirusScanResult scan_cloud_storage_scan_azure_blob(connection_string, container_name, blob_path)

Scan an Azure Blob for viruses

Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

connection_string = 'connection_string_example' # String | Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal.

container_name = 'container_name_example' # String | Name of the Blob container within the Azure Blob Storage account

blob_path = 'blob_path_example' # String | Path to the blob within the container, such as 'hello.pdf' or '/folder/subfolder/world.pdf'


begin
  #Scan an Azure Blob for viruses
  result = api_instance.scan_cloud_storage_scan_azure_blob(connection_string, container_name, blob_path)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_azure_blob: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_string** | **String**| Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. | 
 **container_name** | **String**| Name of the Blob container within the Azure Blob Storage account | 
 **blob_path** | **String**| Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39; | 

### Return type

[**CloudStorageVirusScanResult**](CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_cloud_storage_scan_azure_blob_advanced**
> CloudStorageAdvancedVirusScanResult scan_cloud_storage_scan_azure_blob_advanced(connection_string, container_name, blob_path, opts)

Advanced Scan an Azure Blob for viruses

Advanced Scan the contents of a single Azure Blob and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

connection_string = 'connection_string_example' # String | Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal.

container_name = 'container_name_example' # String | Name of the Blob container within the Azure Blob Storage account

blob_path = 'blob_path_example' # String | Path to the blob within the container, such as 'hello.pdf' or '/folder/subfolder/world.pdf'

opts = { 
  allow_executables: true, # BOOLEAN | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  allow_invalid_files: true, # BOOLEAN | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  allow_scripts: true, # BOOLEAN | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  allow_password_protected_files: true, # BOOLEAN | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  allow_macros: true, # BOOLEAN | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  allow_xml_external_entities: true, # BOOLEAN | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  restrict_file_types: 'restrict_file_types_example' # String | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
}

begin
  #Advanced Scan an Azure Blob for viruses
  result = api_instance.scan_cloud_storage_scan_azure_blob_advanced(connection_string, container_name, blob_path, opts)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_azure_blob_advanced: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_string** | **String**| Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. | 
 **container_name** | **String**| Name of the Blob container within the Azure Blob Storage account | 
 **blob_path** | **String**| Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39; | 
 **allow_executables** | **BOOLEAN**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional] 
 **allow_invalid_files** | **BOOLEAN**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional] 
 **allow_scripts** | **BOOLEAN**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_password_protected_files** | **BOOLEAN**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_macros** | **BOOLEAN**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_xml_external_entities** | **BOOLEAN**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional] 
 **restrict_file_types** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional] 

### Return type

[**CloudStorageAdvancedVirusScanResult**](CloudStorageAdvancedVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_cloud_storage_scan_gcp_storage_file**
> CloudStorageVirusScanResult scan_cloud_storage_scan_gcp_storage_file(bucket_name, object_name, json_credential_file)

Scan an Google Cloud Platform (GCP) Storage file for viruses

Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

bucket_name = 'bucket_name_example' # String | Name of the bucket in Google Cloud Storage

object_name = 'object_name_example' # String | Name of the object or file in Google Cloud Storage

json_credential_file = File.new('/path/to/file.txt') # File | Service Account credential for Google Cloud stored in a JSON file.


begin
  #Scan an Google Cloud Platform (GCP) Storage file for viruses
  result = api_instance.scan_cloud_storage_scan_gcp_storage_file(bucket_name, object_name, json_credential_file)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_gcp_storage_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket_name** | **String**| Name of the bucket in Google Cloud Storage | 
 **object_name** | **String**| Name of the object or file in Google Cloud Storage | 
 **json_credential_file** | **File**| Service Account credential for Google Cloud stored in a JSON file. | 

### Return type

[**CloudStorageVirusScanResult**](CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_cloud_storage_scan_gcp_storage_file_advanced**
> CloudStorageAdvancedVirusScanResult scan_cloud_storage_scan_gcp_storage_file_advanced(bucket_name, object_name, json_credential_file, opts)

Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses

Advanced Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

bucket_name = 'bucket_name_example' # String | Name of the bucket in Google Cloud Storage

object_name = 'object_name_example' # String | Name of the object or file in Google Cloud Storage

json_credential_file = File.new('/path/to/file.txt') # File | Service Account credential for Google Cloud stored in a JSON file.

opts = { 
  allow_executables: true, # BOOLEAN | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  allow_invalid_files: true, # BOOLEAN | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  allow_scripts: true, # BOOLEAN | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  allow_password_protected_files: true, # BOOLEAN | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  allow_macros: true, # BOOLEAN | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  allow_xml_external_entities: true, # BOOLEAN | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  restrict_file_types: 'restrict_file_types_example' # String | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
}

begin
  #Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses
  result = api_instance.scan_cloud_storage_scan_gcp_storage_file_advanced(bucket_name, object_name, json_credential_file, opts)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_gcp_storage_file_advanced: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket_name** | **String**| Name of the bucket in Google Cloud Storage | 
 **object_name** | **String**| Name of the object or file in Google Cloud Storage | 
 **json_credential_file** | **File**| Service Account credential for Google Cloud stored in a JSON file. | 
 **allow_executables** | **BOOLEAN**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional] 
 **allow_invalid_files** | **BOOLEAN**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional] 
 **allow_scripts** | **BOOLEAN**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_password_protected_files** | **BOOLEAN**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_macros** | **BOOLEAN**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_xml_external_entities** | **BOOLEAN**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional] 
 **restrict_file_types** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional] 

### Return type

[**CloudStorageAdvancedVirusScanResult**](CloudStorageAdvancedVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_cloud_storage_scan_share_point_online_file**
> CloudStorageVirusScanResult scan_cloud_storage_scan_share_point_online_file(client_id, client_secret, sharepoint_domain_name, site_id, file_path, opts)

Virus Scan a file in a SharePoint Online Site Drive

Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

client_id = 'client_id_example' # String | Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal.

client_secret = 'client_secret_example' # String | Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal

sharepoint_domain_name = 'sharepoint_domain_name_example' # String | SharePoint Online domain name, such as mydomain.sharepoint.com

site_id = 'site_id_example' # String | Site ID (GUID) of the SharePoint site you wish to retrieve the file from

file_path = 'file_path_example' # String | Path to the file within the drive, such as 'hello.pdf' or '/folder/subfolder/world.pdf'

opts = { 
  tenant_id: 'tenant_id_example', # String | Optional; Tenant ID of your Azure Active Directory
  item_id: 'item_id_example' # String | SharePoint itemID, such as a DriveItem Id
}

begin
  #Virus Scan a file in a SharePoint Online Site Drive
  result = api_instance.scan_cloud_storage_scan_share_point_online_file(client_id, client_secret, sharepoint_domain_name, site_id, file_path, opts)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_share_point_online_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal. | 
 **client_secret** | **String**| Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal | 
 **sharepoint_domain_name** | **String**| SharePoint Online domain name, such as mydomain.sharepoint.com | 
 **site_id** | **String**| Site ID (GUID) of the SharePoint site you wish to retrieve the file from | 
 **file_path** | **String**| Path to the file within the drive, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39; | 
 **tenant_id** | **String**| Optional; Tenant ID of your Azure Active Directory | [optional] 
 **item_id** | **String**| SharePoint itemID, such as a DriveItem Id | [optional] 

### Return type

[**CloudStorageVirusScanResult**](CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_cloud_storage_scan_share_point_online_file_advanced**
> CloudStorageAdvancedVirusScanResult scan_cloud_storage_scan_share_point_online_file_advanced(client_id, client_secret, sharepoint_domain_name, site_id, opts)

Advanced Virus Scan a file in a SharePoint Online Site Drive

Advanced Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.

### Example
```ruby
# load the gem
require 'cloudmersive-virus-scan-api-client'
# setup authorization
CloudmersiveVirusScanApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVirusScanApiClient::ScanCloudStorageApi.new

client_id = 'client_id_example' # String | Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal.

client_secret = 'client_secret_example' # String | Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal

sharepoint_domain_name = 'sharepoint_domain_name_example' # String | SharePoint Online domain name, such as mydomain.sharepoint.com

site_id = 'site_id_example' # String | Site ID (GUID) of the SharePoint site you wish to retrieve the file from

opts = { 
  tenant_id: 'tenant_id_example', # String | Optional; Tenant ID of your Azure Active Directory
  file_path: 'file_path_example', # String | Path to the file within the drive, such as 'hello.pdf' or '/folder/subfolder/world.pdf'
  item_id: 'item_id_example', # String | SharePoint itemID, such as a DriveItem Id
  allow_executables: true, # BOOLEAN | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  allow_invalid_files: true, # BOOLEAN | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  allow_scripts: true, # BOOLEAN | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  allow_password_protected_files: true, # BOOLEAN | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  allow_macros: true, # BOOLEAN | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
  allow_xml_external_entities: true, # BOOLEAN | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
  restrict_file_types: 'restrict_file_types_example' # String | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
}

begin
  #Advanced Virus Scan a file in a SharePoint Online Site Drive
  result = api_instance.scan_cloud_storage_scan_share_point_online_file_advanced(client_id, client_secret, sharepoint_domain_name, site_id, opts)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanCloudStorageApi->scan_cloud_storage_scan_share_point_online_file_advanced: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal. | 
 **client_secret** | **String**| Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal | 
 **sharepoint_domain_name** | **String**| SharePoint Online domain name, such as mydomain.sharepoint.com | 
 **site_id** | **String**| Site ID (GUID) of the SharePoint site you wish to retrieve the file from | 
 **tenant_id** | **String**| Optional; Tenant ID of your Azure Active Directory | [optional] 
 **file_path** | **String**| Path to the file within the drive, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39; | [optional] 
 **item_id** | **String**| SharePoint itemID, such as a DriveItem Id | [optional] 
 **allow_executables** | **BOOLEAN**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional] 
 **allow_invalid_files** | **BOOLEAN**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional] 
 **allow_scripts** | **BOOLEAN**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_password_protected_files** | **BOOLEAN**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_macros** | **BOOLEAN**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_xml_external_entities** | **BOOLEAN**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional] 
 **restrict_file_types** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional] 

### Return type

[**CloudStorageAdvancedVirusScanResult**](CloudStorageAdvancedVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



