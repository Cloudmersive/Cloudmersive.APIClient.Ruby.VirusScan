=begin
#virusapi

#The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module CloudmersiveVirusScanApiClient
  # Result of running an advanced virus scan
  class VirusScanAdvancedResult
    # True if the scan contained no viruses, false otherwise
    attr_accessor :clean_result

    # True if the scan contained an executable (application code), which can be a significant risk factor
    attr_accessor :contains_executable

    # True if the scan contained an invalid file (such as a PDF that is not a valid PDF, Word Document that is not a valid Word Document, etc.), which can be a significant risk factor
    attr_accessor :contains_invalid_file

    # True if the scan contained a script (such as a PHP script, Python script, etc.) which can be a significant risk factor
    attr_accessor :contains_script

    # True if the scan contained a password protected or encrypted file, which can be a significant risk factor
    attr_accessor :contains_password_protected_file

    # True if the uploaded file is of a type that is not allowed based on the optional restrictFileTypes parameter, false otherwise; if restrictFileTypes is not set, this will always be false
    attr_accessor :contains_restricted_file_format

    # True if the uploaded file contains embedded Macros of other embedded threats within the document, which can be a significant risk factor
    attr_accessor :contains_macros

    # True if the uploaded file contains embedded XML External Entity threats of other embedded threats within the document, which can be a significant risk factor
    attr_accessor :contains_xml_external_entities

    # True if the uploaded file contains embedded Insecure Deserialization threats of other embedded threats within the document, which can be a significant risk factor
    attr_accessor :contains_insecure_deserialization

    # True if the uploaded file contains HTML, which can be a significant risk factor
    attr_accessor :contains_html

    # True if the uploaded file contains unsafe archive (e.g. zip) content, such as a Zip Bomb, or other configurations of a zip file that could lead to an unsafe extraction
    attr_accessor :contains_unsafe_archive

    # True if the uploaded file contains an OLE embedded object, which can be a significant risk factor
    attr_accessor :contains_ole_embedded_object

    # For file format verification-supported file formats, the contents-verified file format of the file.  Null indicates that the file format is not supported for contents verification.  If a Virus or Malware is found, this field will always be set to Null.
    attr_accessor :verified_file_format

    # Array of viruses found, if any
    attr_accessor :found_viruses

    # Contains additional non-threat content verification information
    attr_accessor :content_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'clean_result' => :'CleanResult',
        :'contains_executable' => :'ContainsExecutable',
        :'contains_invalid_file' => :'ContainsInvalidFile',
        :'contains_script' => :'ContainsScript',
        :'contains_password_protected_file' => :'ContainsPasswordProtectedFile',
        :'contains_restricted_file_format' => :'ContainsRestrictedFileFormat',
        :'contains_macros' => :'ContainsMacros',
        :'contains_xml_external_entities' => :'ContainsXmlExternalEntities',
        :'contains_insecure_deserialization' => :'ContainsInsecureDeserialization',
        :'contains_html' => :'ContainsHtml',
        :'contains_unsafe_archive' => :'ContainsUnsafeArchive',
        :'contains_ole_embedded_object' => :'ContainsOleEmbeddedObject',
        :'verified_file_format' => :'VerifiedFileFormat',
        :'found_viruses' => :'FoundViruses',
        :'content_information' => :'ContentInformation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'clean_result' => :'BOOLEAN',
        :'contains_executable' => :'BOOLEAN',
        :'contains_invalid_file' => :'BOOLEAN',
        :'contains_script' => :'BOOLEAN',
        :'contains_password_protected_file' => :'BOOLEAN',
        :'contains_restricted_file_format' => :'BOOLEAN',
        :'contains_macros' => :'BOOLEAN',
        :'contains_xml_external_entities' => :'BOOLEAN',
        :'contains_insecure_deserialization' => :'BOOLEAN',
        :'contains_html' => :'BOOLEAN',
        :'contains_unsafe_archive' => :'BOOLEAN',
        :'contains_ole_embedded_object' => :'BOOLEAN',
        :'verified_file_format' => :'String',
        :'found_viruses' => :'Array<VirusFound>',
        :'content_information' => :'AdditionalAdvancedScanInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'CleanResult')
        self.clean_result = attributes[:'CleanResult']
      end

      if attributes.has_key?(:'ContainsExecutable')
        self.contains_executable = attributes[:'ContainsExecutable']
      end

      if attributes.has_key?(:'ContainsInvalidFile')
        self.contains_invalid_file = attributes[:'ContainsInvalidFile']
      end

      if attributes.has_key?(:'ContainsScript')
        self.contains_script = attributes[:'ContainsScript']
      end

      if attributes.has_key?(:'ContainsPasswordProtectedFile')
        self.contains_password_protected_file = attributes[:'ContainsPasswordProtectedFile']
      end

      if attributes.has_key?(:'ContainsRestrictedFileFormat')
        self.contains_restricted_file_format = attributes[:'ContainsRestrictedFileFormat']
      end

      if attributes.has_key?(:'ContainsMacros')
        self.contains_macros = attributes[:'ContainsMacros']
      end

      if attributes.has_key?(:'ContainsXmlExternalEntities')
        self.contains_xml_external_entities = attributes[:'ContainsXmlExternalEntities']
      end

      if attributes.has_key?(:'ContainsInsecureDeserialization')
        self.contains_insecure_deserialization = attributes[:'ContainsInsecureDeserialization']
      end

      if attributes.has_key?(:'ContainsHtml')
        self.contains_html = attributes[:'ContainsHtml']
      end

      if attributes.has_key?(:'ContainsUnsafeArchive')
        self.contains_unsafe_archive = attributes[:'ContainsUnsafeArchive']
      end

      if attributes.has_key?(:'ContainsOleEmbeddedObject')
        self.contains_ole_embedded_object = attributes[:'ContainsOleEmbeddedObject']
      end

      if attributes.has_key?(:'VerifiedFileFormat')
        self.verified_file_format = attributes[:'VerifiedFileFormat']
      end

      if attributes.has_key?(:'FoundViruses')
        if (value = attributes[:'FoundViruses']).is_a?(Array)
          self.found_viruses = value
        end
      end

      if attributes.has_key?(:'ContentInformation')
        self.content_information = attributes[:'ContentInformation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          clean_result == o.clean_result &&
          contains_executable == o.contains_executable &&
          contains_invalid_file == o.contains_invalid_file &&
          contains_script == o.contains_script &&
          contains_password_protected_file == o.contains_password_protected_file &&
          contains_restricted_file_format == o.contains_restricted_file_format &&
          contains_macros == o.contains_macros &&
          contains_xml_external_entities == o.contains_xml_external_entities &&
          contains_insecure_deserialization == o.contains_insecure_deserialization &&
          contains_html == o.contains_html &&
          contains_unsafe_archive == o.contains_unsafe_archive &&
          contains_ole_embedded_object == o.contains_ole_embedded_object &&
          verified_file_format == o.verified_file_format &&
          found_viruses == o.found_viruses &&
          content_information == o.content_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [clean_result, contains_executable, contains_invalid_file, contains_script, contains_password_protected_file, contains_restricted_file_format, contains_macros, contains_xml_external_entities, contains_insecure_deserialization, contains_html, contains_unsafe_archive, contains_ole_embedded_object, verified_file_format, found_viruses, content_information].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CloudmersiveVirusScanApiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
