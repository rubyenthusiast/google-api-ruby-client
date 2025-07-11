# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module LookerV1
      
      # Looker instance Admin settings fields.
      class AdminSettings
        include Google::Apis::Core::Hashable
      
        # Email domain allowlist for the instance.
        # Corresponds to the JSON property `allowedEmailDomains`
        # @return [Array<String>]
        attr_accessor :allowed_email_domains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_email_domains = args[:allowed_email_domains] if args.key?(:allowed_email_domains)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Custom domain information.
      class CustomDomain
        include Google::Apis::Core::Hashable
      
        # Domain name.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Domain state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Specifies the maintenance denial period.
      class DenyMaintenancePeriod
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::LookerV1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::LookerV1::Date]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::LookerV1::TimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encryption configuration (i.e. CMEK).
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Name of the CMEK key in KMS (input parameter).
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Output only. Full name and version of the CMEK key currently in use to encrypt
        # Looker data. Format: `projects/`project`/locations/`location`/keyRings/`ring`/
        # cryptoKeys/`key`/cryptoKeyVersions/`version``. Empty if CMEK is not configured
        # in this instance.
        # Corresponds to the JSON property `kmsKeyNameVersion`
        # @return [String]
        attr_accessor :kms_key_name_version
      
        # Output only. Status of the CMEK key.
        # Corresponds to the JSON property `kmsKeyState`
        # @return [String]
        attr_accessor :kms_key_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_name_version = args[:kms_key_name_version] if args.key?(:kms_key_name_version)
          @kms_key_state = args[:kms_key_state] if args.key?(:kms_key_state)
        end
      end
      
      # Configuration for Encryption - e.g. CMEK.
      class ExportEncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Required. Name of the CMEK key in KMS.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Request options for exporting data of an Instance.
      class ExportInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for Encryption - e.g. CMEK.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::LookerV1::ExportEncryptionConfig]
        attr_accessor :encryption_config
      
        # The path to the folder in Google Cloud Storage where the export will be stored.
        # The URI is in the form `gs://bucketName/folderName`.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # ExportMetadata represents the metadata of the exported artifacts. The metadata.
      # json file in export artifact can be parsed as this message
      class ExportMetadata
        include Google::Apis::Core::Hashable
      
        # Encryption key details for the exported artifact.
        # Corresponds to the JSON property `exportEncryptionKey`
        # @return [Google::Apis::LookerV1::ExportMetadataEncryptionKey]
        attr_accessor :export_encryption_key
      
        # List of files created as part of export artifact (excluding the metadata). The
        # paths are relative to the folder containing the metadata.
        # Corresponds to the JSON property `filePaths`
        # @return [Array<String>]
        attr_accessor :file_paths
      
        # Looker encryption key, encrypted with the provided export encryption key. This
        # value will only be populated if the looker instance uses Looker managed
        # encryption instead of CMEK.
        # Corresponds to the JSON property `lookerEncryptionKey`
        # @return [String]
        attr_accessor :looker_encryption_key
      
        # Name of the exported instance. Format: projects/`project`/locations/`location`/
        # instances/`instance`
        # Corresponds to the JSON property `lookerInstance`
        # @return [String]
        attr_accessor :looker_instance
      
        # Platform edition of the exported instance.
        # Corresponds to the JSON property `lookerPlatformEdition`
        # @return [String]
        attr_accessor :looker_platform_edition
      
        # Version of instance when the export was created.
        # Corresponds to the JSON property `lookerVersion`
        # @return [String]
        attr_accessor :looker_version
      
        # The source type of the migration.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_encryption_key = args[:export_encryption_key] if args.key?(:export_encryption_key)
          @file_paths = args[:file_paths] if args.key?(:file_paths)
          @looker_encryption_key = args[:looker_encryption_key] if args.key?(:looker_encryption_key)
          @looker_instance = args[:looker_instance] if args.key?(:looker_instance)
          @looker_platform_edition = args[:looker_platform_edition] if args.key?(:looker_platform_edition)
          @looker_version = args[:looker_version] if args.key?(:looker_version)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Encryption key details for the exported artifact.
      class ExportMetadataEncryptionKey
        include Google::Apis::Core::Hashable
      
        # Name of the CMEK.
        # Corresponds to the JSON property `cmek`
        # @return [String]
        attr_accessor :cmek
      
        # Version of the CMEK.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cmek = args[:cmek] if args.key?(:cmek)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Requestion options for importing looker data to an Instance
      class ImportInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Path to the import folder in Google Cloud Storage, in the form `gs://
        # bucketName/folderName`.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # A Looker instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Looker instance Admin settings fields.
        # Corresponds to the JSON property `adminSettings`
        # @return [Google::Apis::LookerV1::AdminSettings]
        attr_accessor :admin_settings
      
        # Network name in the consumer project. Format: `projects/`project`/global/
        # networks/`network``. Note that the consumer network may be in a different GCP
        # project than the consumer project that is hosting the Looker Instance.
        # Corresponds to the JSON property `consumerNetwork`
        # @return [String]
        attr_accessor :consumer_network
      
        # Output only. The time when the Looker instance provisioning was first
        # requested.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Custom domain information.
        # Corresponds to the JSON property `customDomain`
        # @return [Google::Apis::LookerV1::CustomDomain]
        attr_accessor :custom_domain
      
        # Specifies the maintenance denial period.
        # Corresponds to the JSON property `denyMaintenancePeriod`
        # @return [Google::Apis::LookerV1::DenyMaintenancePeriod]
        attr_accessor :deny_maintenance_period
      
        # Output only. Public Egress IP (IPv4).
        # Corresponds to the JSON property `egressPublicIp`
        # @return [String]
        attr_accessor :egress_public_ip
      
        # Encryption configuration (i.e. CMEK).
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::LookerV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Optional. Whether FIPS is enabled on the Looker instance.
        # Corresponds to the JSON property `fipsEnabled`
        # @return [Boolean]
        attr_accessor :fips_enabled
        alias_method :fips_enabled?, :fips_enabled
      
        # Optional. Whether Gemini feature is enabled on the Looker instance or not.
        # Corresponds to the JSON property `geminiEnabled`
        # @return [Boolean]
        attr_accessor :gemini_enabled
        alias_method :gemini_enabled?, :gemini_enabled
      
        # Output only. Private Ingress IP (IPv4).
        # Corresponds to the JSON property `ingressPrivateIp`
        # @return [String]
        attr_accessor :ingress_private_ip
      
        # Output only. Public Ingress IP (IPv4).
        # Corresponds to the JSON property `ingressPublicIp`
        # @return [String]
        attr_accessor :ingress_public_ip
      
        # Specifies the maintenance denial period.
        # Corresponds to the JSON property `lastDenyMaintenancePeriod`
        # @return [Google::Apis::LookerV1::DenyMaintenancePeriod]
        attr_accessor :last_deny_maintenance_period
      
        # Optional. Linked Google Cloud Project Number for Looker Studio Pro.
        # Corresponds to the JSON property `linkedLspProjectNumber`
        # @return [Fixnum]
        attr_accessor :linked_lsp_project_number
      
        # Output only. Looker instance URI which can be used to access the Looker
        # Instance UI.
        # Corresponds to the JSON property `lookerUri`
        # @return [String]
        attr_accessor :looker_uri
      
        # Output only. The Looker version that the instance is using.
        # Corresponds to the JSON property `lookerVersion`
        # @return [String]
        attr_accessor :looker_version
      
        # Published upcoming future maintenance schedule.
        # Corresponds to the JSON property `maintenanceSchedule`
        # @return [Google::Apis::LookerV1::MaintenanceSchedule]
        attr_accessor :maintenance_schedule
      
        # Specifies the recurring maintenance window.
        # Corresponds to the JSON property `maintenanceWindow`
        # @return [Google::Apis::LookerV1::MaintenanceWindow]
        attr_accessor :maintenance_window
      
        # Output only. Format: `projects/`project`/locations/`location`/instances/`
        # instance``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Looker instance OAuth login settings.
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::LookerV1::OAuthConfig]
        attr_accessor :oauth_config
      
        # Platform edition.
        # Corresponds to the JSON property `platformEdition`
        # @return [String]
        attr_accessor :platform_edition
      
        # Whether private IP is enabled on the Looker instance.
        # Corresponds to the JSON property `privateIpEnabled`
        # @return [Boolean]
        attr_accessor :private_ip_enabled
        alias_method :private_ip_enabled?, :private_ip_enabled
      
        # Information for Private Service Connect (PSC) setup for a Looker instance.
        # Corresponds to the JSON property `pscConfig`
        # @return [Google::Apis::LookerV1::PscConfig]
        attr_accessor :psc_config
      
        # Optional. Whether to use Private Service Connect (PSC) for private IP
        # connectivity. If true, neither `public_ip_enabled` nor `private_ip_enabled`
        # can be true.
        # Corresponds to the JSON property `pscEnabled`
        # @return [Boolean]
        attr_accessor :psc_enabled
        alias_method :psc_enabled?, :psc_enabled
      
        # Whether public IP is enabled on the Looker instance.
        # Corresponds to the JSON property `publicIpEnabled`
        # @return [Boolean]
        attr_accessor :public_ip_enabled
        alias_method :public_ip_enabled?, :public_ip_enabled
      
        # Name of a reserved IP address range within the Instance.consumer_network, to
        # be used for private services access connection. May or may not be specified in
        # a create request.
        # Corresponds to the JSON property `reservedRange`
        # @return [String]
        attr_accessor :reserved_range
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The state of the instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the Looker instance was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Metadata about users for a Looker instance.
        # Corresponds to the JSON property `userMetadata`
        # @return [Google::Apis::LookerV1::UserMetadata]
        attr_accessor :user_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_settings = args[:admin_settings] if args.key?(:admin_settings)
          @consumer_network = args[:consumer_network] if args.key?(:consumer_network)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_domain = args[:custom_domain] if args.key?(:custom_domain)
          @deny_maintenance_period = args[:deny_maintenance_period] if args.key?(:deny_maintenance_period)
          @egress_public_ip = args[:egress_public_ip] if args.key?(:egress_public_ip)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @fips_enabled = args[:fips_enabled] if args.key?(:fips_enabled)
          @gemini_enabled = args[:gemini_enabled] if args.key?(:gemini_enabled)
          @ingress_private_ip = args[:ingress_private_ip] if args.key?(:ingress_private_ip)
          @ingress_public_ip = args[:ingress_public_ip] if args.key?(:ingress_public_ip)
          @last_deny_maintenance_period = args[:last_deny_maintenance_period] if args.key?(:last_deny_maintenance_period)
          @linked_lsp_project_number = args[:linked_lsp_project_number] if args.key?(:linked_lsp_project_number)
          @looker_uri = args[:looker_uri] if args.key?(:looker_uri)
          @looker_version = args[:looker_version] if args.key?(:looker_version)
          @maintenance_schedule = args[:maintenance_schedule] if args.key?(:maintenance_schedule)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
          @name = args[:name] if args.key?(:name)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @platform_edition = args[:platform_edition] if args.key?(:platform_edition)
          @private_ip_enabled = args[:private_ip_enabled] if args.key?(:private_ip_enabled)
          @psc_config = args[:psc_config] if args.key?(:psc_config)
          @psc_enabled = args[:psc_enabled] if args.key?(:psc_enabled)
          @public_ip_enabled = args[:public_ip_enabled] if args.key?(:public_ip_enabled)
          @reserved_range = args[:reserved_range] if args.key?(:reserved_range)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_metadata = args[:user_metadata] if args.key?(:user_metadata)
        end
      end
      
      # The details of a backup resource.
      class InstanceBackup
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the backup was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Encryption configuration (i.e. CMEK).
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::LookerV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Output only. The time when the backup will be deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Immutable. The relative resource name of the backup, in the following form: `
        # projects/`project_number`/locations/`location_id`/instances/`instance_id`/
        # backups/`backup``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response from listing Looker instance backups.
      class ListInstanceBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of instances matching the request filters, up to the requested `
        # page_size`.
        # Corresponds to the JSON property `instanceBackups`
        # @return [Array<Google::Apis::LookerV1::InstanceBackup>]
        attr_accessor :instance_backups
      
        # If provided, a page token that can look up the next `page_size` results. If
        # empty, the results list is exhausted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_backups = args[:instance_backups] if args.key?(:instance_backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response from ListInstances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of instances matching the request filters, up to the requested
        # ListInstancesRequest.pageSize.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::LookerV1::Instance>]
        attr_accessor :instances
      
        # If provided, a page token that can look up the next ListInstancesRequest.
        # pageSize results. If empty, the results list is exhausted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::LookerV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::LookerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Published upcoming future maintenance schedule.
      class MaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # The scheduled end time for the maintenance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The scheduled start time for the maintenance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Specifies the recurring maintenance window.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Required. Day of the week for this MaintenanceWindow (in UTC).
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::LookerV1::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Looker instance OAuth login settings.
      class OAuthConfig
        include Google::Apis::Core::Hashable
      
        # Input only. Client ID from an external OAuth application. This is an input-
        # only field, and thus will not be set in any responses.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Input only. Client secret from an external OAuth application. This is an input-
        # only field, and thus will not be set in any responses.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::LookerV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Information for Private Service Connect (PSC) setup for a Looker instance.
      class PscConfig
        include Google::Apis::Core::Hashable
      
        # Optional. List of VPCs that are allowed ingress into looker. Format: projects/`
        # project`/global/networks/`network`
        # Corresponds to the JSON property `allowedVpcs`
        # @return [Array<String>]
        attr_accessor :allowed_vpcs
      
        # Output only. URI of the Looker service attachment.
        # Corresponds to the JSON property `lookerServiceAttachmentUri`
        # @return [String]
        attr_accessor :looker_service_attachment_uri
      
        # Optional. List of egress service attachment configurations.
        # Corresponds to the JSON property `serviceAttachments`
        # @return [Array<Google::Apis::LookerV1::ServiceAttachment>]
        attr_accessor :service_attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_vpcs = args[:allowed_vpcs] if args.key?(:allowed_vpcs)
          @looker_service_attachment_uri = args[:looker_service_attachment_uri] if args.key?(:looker_service_attachment_uri)
          @service_attachments = args[:service_attachments] if args.key?(:service_attachments)
        end
      end
      
      # Request options for restarting an instance.
      class RestartInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request options for restoring an instance
      class RestoreInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. Backup being used to restore the instance Format: projects/`project`/
        # locations/`location`/instances/`instance`/backups/`backup`
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
        end
      end
      
      # Service attachment configuration.
      class ServiceAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. Connection status.
        # Corresponds to the JSON property `connectionStatus`
        # @return [String]
        attr_accessor :connection_status
      
        # Optional. Fully qualified domain name that will be used in the private DNS
        # record created for the service attachment.
        # Corresponds to the JSON property `localFqdn`
        # @return [String]
        attr_accessor :local_fqdn
      
        # Optional. List of fully qualified domain names that will be used in the
        # private DNS record created for the service attachment.
        # Corresponds to the JSON property `localFqdns`
        # @return [Array<String>]
        attr_accessor :local_fqdns
      
        # Required. URI of the service attachment to connect to. Format: projects/`
        # project`/regions/`region`/serviceAttachments/`service_attachment`
        # Corresponds to the JSON property `targetServiceAttachmentUri`
        # @return [String]
        attr_accessor :target_service_attachment_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_status = args[:connection_status] if args.key?(:connection_status)
          @local_fqdn = args[:local_fqdn] if args.key?(:local_fqdn)
          @local_fqdns = args[:local_fqdns] if args.key?(:local_fqdns)
          @target_service_attachment_uri = args[:target_service_attachment_uri] if args.key?(:target_service_attachment_uri)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Metadata about users for a Looker instance.
      class UserMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The number of additional developer users the instance owner has
        # purchased.
        # Corresponds to the JSON property `additionalDeveloperUserCount`
        # @return [Fixnum]
        attr_accessor :additional_developer_user_count
      
        # Optional. The number of additional standard users the instance owner has
        # purchased.
        # Corresponds to the JSON property `additionalStandardUserCount`
        # @return [Fixnum]
        attr_accessor :additional_standard_user_count
      
        # Optional. The number of additional viewer users the instance owner has
        # purchased.
        # Corresponds to the JSON property `additionalViewerUserCount`
        # @return [Fixnum]
        attr_accessor :additional_viewer_user_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_developer_user_count = args[:additional_developer_user_count] if args.key?(:additional_developer_user_count)
          @additional_standard_user_count = args[:additional_standard_user_count] if args.key?(:additional_standard_user_count)
          @additional_viewer_user_count = args[:additional_viewer_user_count] if args.key?(:additional_viewer_user_count)
        end
      end
    end
  end
end
