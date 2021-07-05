# CloudmersiveVirusScanApiClient::VirusScanAdvancedResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clean_result** | **BOOLEAN** | True if the scan contained no viruses, false otherwise | [optional] 
**contains_executable** | **BOOLEAN** | True if the scan contained an executable (application code), which can be a significant risk factor | [optional] 
**contains_invalid_file** | **BOOLEAN** | True if the scan contained an invalid file (such as a PDF that is not a valid PDF, Word Document that is not a valid Word Document, etc.), which can be a significant risk factor | [optional] 
**contains_script** | **BOOLEAN** | True if the scan contained a script (such as a PHP script, Python script, etc.) which can be a significant risk factor | [optional] 
**contains_password_protected_file** | **BOOLEAN** | True if the scan contained a password protected or encrypted file, which can be a significant risk factor | [optional] 
**contains_restricted_file_format** | **BOOLEAN** | True if the uploaded file is of a type that is not allowed based on the optional restrictFileTypes parameter, false otherwise; if restrictFileTypes is not set, this will always be false | [optional] 
**contains_macros** | **BOOLEAN** | True if the uploaded file contains embedded Macros of other embedded threats within the document, which can be a significant risk factor | [optional] 
**contains_xml_external_entities** | **BOOLEAN** | True if the uploaded file contains embedded XML External Entity threats of other embedded threats within the document, which can be a significant risk factor | [optional] 
**verified_file_format** | **String** | For file format verification-supported file formats, the contents-verified file format of the file.  Null indicates that the file format is not supported for contents verification.  If a Virus or Malware is found, this field will always be set to Null. | [optional] 
**found_viruses** | [**Array&lt;VirusFound&gt;**](VirusFound.md) | Array of viruses found, if any | [optional] 


