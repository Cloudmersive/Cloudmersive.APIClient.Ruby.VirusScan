# CloudmersiveVirusScanApiClient::ScanApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scan_file**](ScanApi.md#scan_file) | **POST** /virus/scan/file | Scan a file for viruses
[**scan_file_advanced**](ScanApi.md#scan_file_advanced) | **POST** /virus/scan/file/advanced | Advanced Scan a file for viruses
[**scan_website**](ScanApi.md#scan_website) | **POST** /virus/scan/website | Scan a website for malicious content and threats


# **scan_file**
> VirusScanResult scan_file(input_file)

Scan a file for viruses

Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

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

api_instance = CloudmersiveVirusScanApiClient::ScanApi.new

input_file = File.new('/path/to/file.txt') # File | Input file to perform the operation on.


begin
  #Scan a file for viruses
  result = api_instance.scan_file(input_file)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanApi->scan_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | 

### Return type

[**VirusScanResult**](VirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_file_advanced**
> VirusScanAdvancedResult scan_file_advanced(input_file, opts)

Advanced Scan a file for viruses

Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

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

api_instance = CloudmersiveVirusScanApiClient::ScanApi.new

input_file = File.new('/path/to/file.txt') # File | Input file to perform the operation on.

opts = { 
  allow_executables: true, # BOOLEAN | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
  allow_invalid_files: true, # BOOLEAN | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
  allow_scripts: true, # BOOLEAN | Set to false to block script files, such as a PHP files, Pythong scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
  allow_password_protected_files: true, # BOOLEAN | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
  restrict_file_types: 'restrict_file_types_example' # String | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
}

begin
  #Advanced Scan a file for viruses
  result = api_instance.scan_file_advanced(input_file, opts)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanApi->scan_file_advanced: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | 
 **allow_executables** | **BOOLEAN**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional] 
 **allow_invalid_files** | **BOOLEAN**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional] 
 **allow_scripts** | **BOOLEAN**| Set to false to block script files, such as a PHP files, Pythong scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allow_password_protected_files** | **BOOLEAN**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **restrict_file_types** | **String**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional] 

### Return type

[**VirusScanAdvancedResult**](VirusScanAdvancedResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **scan_website**
> WebsiteScanResult scan_website(input)

Scan a website for malicious content and threats

Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).

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

api_instance = CloudmersiveVirusScanApiClient::ScanApi.new

input = CloudmersiveVirusScanApiClient::WebsiteScanRequest.new # WebsiteScanRequest | 


begin
  #Scan a website for malicious content and threats
  result = api_instance.scan_website(input)
  p result
rescue CloudmersiveVirusScanApiClient::ApiError => e
  puts "Exception when calling ScanApi->scan_website: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**WebsiteScanRequest**](WebsiteScanRequest.md)|  | 

### Return type

[**WebsiteScanResult**](WebsiteScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



