# CloudmersiveVirusScanApiClient::WebsiteScanResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clean_result** | **BOOLEAN** | True if the scan contained no threats, false otherwise | [optional] 
**website_threat_type** | **String** | Type of threat returned; can be None, Malware, ForcedDownload or Phishing | [optional] 
**found_viruses** | [**Array&lt;VirusFound&gt;**](VirusFound.md) | Array of viruses found, if any | [optional] 
**website_http_response_code** | **Integer** | The remote server URL HTTP reasponse code; useful for debugging issues with scanning; typically if the remote server returns a 200 or 300-series code this means a successful response, while a 400 or 500 series code would represent an error returned from the remote server for the provided URL. | [optional] 


