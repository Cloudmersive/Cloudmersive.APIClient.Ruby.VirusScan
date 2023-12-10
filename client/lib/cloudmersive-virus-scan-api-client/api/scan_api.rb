=begin
#virusapi

#The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module CloudmersiveVirusScanApiClient
  class ScanApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Scan a file for viruses
    # Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
    # @param input_file Input file to perform the operation on.
    # @param [Hash] opts the optional parameters
    # @return [VirusScanResult]
    def scan_file(input_file, opts = {})
      data, _status_code, _headers = scan_file_with_http_info(input_file, opts)
      data
    end

    # Scan a file for viruses
    # Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
    # @param input_file Input file to perform the operation on.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VirusScanResult, Fixnum, Hash)>] VirusScanResult data, response status code and response headers
    def scan_file_with_http_info(input_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scan_file ...'
      end
      # verify the required parameter 'input_file' is set
      if @api_client.config.client_side_validation && input_file.nil?
        fail ArgumentError, "Missing the required parameter 'input_file' when calling ScanApi.scan_file"
      end
      # resource path
      local_var_path = '/virus/scan/file'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['inputFile'] = input_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VirusScanResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scan_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Advanced Scan a file for viruses
    # Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash, MSG, and a wide range of image file formats.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
    # @param input_file Input file to perform the operation on.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name Optional: specify the original file name of the file being scanned.  By default the file name is taken from inputFile parameter, but if this is not provided, or you wish to override it, you can specify the original file name using this parameter.
    # @option opts [BOOLEAN] :allow_executables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_invalid_files Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_scripts Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_password_protected_files Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_macros Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros (including support for .DOCX, .XLSX, .PPTX, .DOC and .XLS), and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_xml_external_entities Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_insecure_deserialization Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_html Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability].  If set to true, HTML files containing script tags will be allowed, but ContainsScript will be set to true if script tags are present.
    # @option opts [BOOLEAN] :allow_unsafe_archives Set to false to block unsafe archives such as Zip Bombs, and other archives that can cause unsafe extraction outcomes.  Default is false (recommended).  If set to true, unsafe archives will be allowed.
    # @option opts [BOOLEAN] :allow_ole_embedded_object Set to false to block OLE embedded objects, which can contain vulnerabilities and executable code.  Default is false (recommended).  If set to true, OLE embedded objects will be allowed.
    # @option opts [String] :options Comma separated set of configuration operations.  Include permitJavascriptAndHtmlInPDFs to allow JavaScript and HTML in PDF files.  Default is no options.
    # @option opts [String] :restrict_file_types Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
    # @return [VirusScanAdvancedResult]
    def scan_file_advanced(input_file, opts = {})
      data, _status_code, _headers = scan_file_advanced_with_http_info(input_file, opts)
      data
    end

    # Advanced Scan a file for viruses
    # Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash, MSG, and a wide range of image file formats.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
    # @param input_file Input file to perform the operation on.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name Optional: specify the original file name of the file being scanned.  By default the file name is taken from inputFile parameter, but if this is not provided, or you wish to override it, you can specify the original file name using this parameter.
    # @option opts [BOOLEAN] :allow_executables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_invalid_files Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_scripts Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_password_protected_files Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_macros Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros (including support for .DOCX, .XLSX, .PPTX, .DOC and .XLS), and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_xml_external_entities Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_insecure_deserialization Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
    # @option opts [BOOLEAN] :allow_html Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability].  If set to true, HTML files containing script tags will be allowed, but ContainsScript will be set to true if script tags are present.
    # @option opts [BOOLEAN] :allow_unsafe_archives Set to false to block unsafe archives such as Zip Bombs, and other archives that can cause unsafe extraction outcomes.  Default is false (recommended).  If set to true, unsafe archives will be allowed.
    # @option opts [BOOLEAN] :allow_ole_embedded_object Set to false to block OLE embedded objects, which can contain vulnerabilities and executable code.  Default is false (recommended).  If set to true, OLE embedded objects will be allowed.
    # @option opts [String] :options Comma separated set of configuration operations.  Include permitJavascriptAndHtmlInPDFs to allow JavaScript and HTML in PDF files.  Default is no options.
    # @option opts [String] :restrict_file_types Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.
    # @return [Array<(VirusScanAdvancedResult, Fixnum, Hash)>] VirusScanAdvancedResult data, response status code and response headers
    def scan_file_advanced_with_http_info(input_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scan_file_advanced ...'
      end
      # verify the required parameter 'input_file' is set
      if @api_client.config.client_side_validation && input_file.nil?
        fail ArgumentError, "Missing the required parameter 'input_file' when calling ScanApi.scan_file_advanced"
      end
      # resource path
      local_var_path = '/virus/scan/file/advanced'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'fileName'] = opts[:'file_name'] if !opts[:'file_name'].nil?
      header_params[:'allowExecutables'] = opts[:'allow_executables'] if !opts[:'allow_executables'].nil?
      header_params[:'allowInvalidFiles'] = opts[:'allow_invalid_files'] if !opts[:'allow_invalid_files'].nil?
      header_params[:'allowScripts'] = opts[:'allow_scripts'] if !opts[:'allow_scripts'].nil?
      header_params[:'allowPasswordProtectedFiles'] = opts[:'allow_password_protected_files'] if !opts[:'allow_password_protected_files'].nil?
      header_params[:'allowMacros'] = opts[:'allow_macros'] if !opts[:'allow_macros'].nil?
      header_params[:'allowXmlExternalEntities'] = opts[:'allow_xml_external_entities'] if !opts[:'allow_xml_external_entities'].nil?
      header_params[:'allowInsecureDeserialization'] = opts[:'allow_insecure_deserialization'] if !opts[:'allow_insecure_deserialization'].nil?
      header_params[:'allowHtml'] = opts[:'allow_html'] if !opts[:'allow_html'].nil?
      header_params[:'allowUnsafeArchives'] = opts[:'allow_unsafe_archives'] if !opts[:'allow_unsafe_archives'].nil?
      header_params[:'allowOleEmbeddedObject'] = opts[:'allow_ole_embedded_object'] if !opts[:'allow_ole_embedded_object'].nil?
      header_params[:'options'] = opts[:'options'] if !opts[:'options'].nil?
      header_params[:'restrictFileTypes'] = opts[:'restrict_file_types'] if !opts[:'restrict_file_types'].nil?

      # form parameters
      form_params = {}
      form_params['inputFile'] = input_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VirusScanAdvancedResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scan_file_advanced\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Scan a website for malicious content and threats
    # Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).
    # @param input 
    # @param [Hash] opts the optional parameters
    # @return [WebsiteScanResult]
    def scan_website(input, opts = {})
      data, _status_code, _headers = scan_website_with_http_info(input, opts)
      data
    end

    # Scan a website for malicious content and threats
    # Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).
    # @param input 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebsiteScanResult, Fixnum, Hash)>] WebsiteScanResult data, response status code and response headers
    def scan_website_with_http_info(input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scan_website ...'
      end
      # verify the required parameter 'input' is set
      if @api_client.config.client_side_validation && input.nil?
        fail ArgumentError, "Missing the required parameter 'input' when calling ScanApi.scan_website"
      end
      # resource path
      local_var_path = '/virus/scan/website'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(input)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebsiteScanResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scan_website\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
