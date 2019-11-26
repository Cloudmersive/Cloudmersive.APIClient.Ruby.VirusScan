# CloudmersiveVirusScanApiClient::WebsiteScanResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clean_result** | **BOOLEAN** | True if the scan contained no threats, false otherwise | [optional] 
**website_threat_type** | **String** | Type of threat returned; can be None, Malware, ForcedDownload or Phishing | [optional] 
**found_viruses** | [**Array&lt;VirusFound&gt;**](VirusFound.md) | Array of viruses found, if any | [optional] 


