# CloudmersiveVirusScanApiClient::ScanApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scan_file**](ScanApi.md#scan_file) | **POST** /virus/scan/file | Scan a file for viruses


# **scan_file**
> VirusScanResult scan_file(input_file)

Scan a file for viruses

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

input_file = File.new("/path/to/file.txt") # File | Input file to perform the operation on.


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



