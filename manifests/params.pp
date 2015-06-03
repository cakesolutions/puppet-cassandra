class cassandra::params {
    $using_dse = $::cassandra_using_dse ? {
        undef   => false,
        default => $::cassandra_using_dse,
    }

    $using_opscenter = $::cassandra_using_opscenter ? {
        undef   => false,
        default => $::cassandra_using_opscenter,
    }

    $dse_ldap_enabled = $::cassandra_dse_ldap_enabled ? {
        undef   => false,
        default => $::cassandra_dse_ldap_enabled
    }

    $dse_ldap_server_host = $::cassandra_dse_ldap_server_host ? {
        undef   => '',
        default => $::cassandra_dse_ldap_server_host
    }

     $dse_ldap_server_port = $::cassandra_dse_ldap_server_port ? {
        undef   => '',
        default => $::cassandra_dse_ldap_server_port
    }

     $dse_ldap_search_dn = $::cassandra_dse_ldap_search_dn ? {
        undef   => '',
        default => $::cassandra_dse_ldap_search_dn
    }

     $dse_ldap_search_password = $::cassandra_dse_ldap_search_password ? {
        undef   => '',
        default => $::cassandra_dse_ldap_search_password
    }

     $dse_ldap_use_ssl = $::cassandra_dse_ldap_use_ssl ? {
        undef   => false,
        default => $::cassandra_dse_ldap_use_ssl
    }

     $dse_ldap_use_tls = $::cassandra_dse_ldap_use_tls ? {
        undef   => false,
        default => $::cassandra_dse_ldap_use_tls
    }

     $dse_ldap_truststore_in_use = $::cassandra_dse_ldap_truststore_in_use ? {
        undef   => false,
        default => $::cassandra_dse_ldap_truststore_in_use
    }

     $dse_ldap_truststore_path = $::cassandra_dse_ldap_truststore_path ? {
        undef   => '',
        default => $::cassandra_dse_ldap_truststore_path
    }

     $dse_ldap_truststore_password = $::cassandra_dse_ldap_truststore_password ? {
        undef   => '',
        default => $::cassandra_dse_ldap_truststore_password
    }

     $dse_ldap_truststore_type = $::cassandra_dse_ldap_truststore_type ? {
        undef   => '',
        default => $::cassandra_dse_ldap_truststore_type
    }

     $dse_ldap_user_search_base = $::cassandra_dse_ldap_user_search_base ? {
        undef   => '',
        default => $::cassandra_dse_ldap_user_search_base
    }

     $dse_ldap_user_search_filter = $::cassandra_dse_ldap_user_search_filter ? {
        undef   => '',
        default => $::cassandra_dse_ldap_user_search_filter
    }

     $dse_ldap_credentials_validity_in_ms = $::cassandra_dse_ldap_credentials_validity_in_ms ? {
        undef   => '0',
        default => $::cassandra_dse_ldap_credentials_validity_in_ms
    }

     $dse_ldap_search_validity_in_seconds = $::cassandra_dse_ldap_search_validity_in_seconds ? {
        undef   => '0',
        default => $::cassandra_dse_ldap_search_validity_in_seconds
    }

     $dse_ldap_connection_pool_max_active = $::cassandra_dse_ldap_connection_pool_max_active ? {
        undef   => '8',
        default => $::cassandra_dse_ldap_connection_pool_max_active
    }

     $dse_ldap_connection_pool_max_idle = $::cassandra_dse_ldap_connection_pool_max_idle ? {
        undef   => '8',
        default => $::cassandra_dse_ldap_connection_pool_max_idle
    }

    $dse_audit_logging_enabled = $::cassandra_dse_audit_logging_enabled ? {
        undef   => false,
        default => $::cassandra_dse_audit_logging_enabled
    }

    $dse_audit_logger = $::cassandra_dse_audit_logger ? {
        undef   => '',
        default => $::cassandra_dse_audit_logger
    }

     $dse_audit_log4j_logger_dataaudit = $::cassandra_dse_audit_log4j_logger_dataaudit ? {
        undef   => '',
        default => $::cassandra_dse_audit_log4j_logger_dataaudit
    }

    $dse_audit_log4j_additivity_dataaudit = $::cassandra_dse_audit_log4j_additivity_dataaudit ? {
        undef   => false,
        default => $::cassandra_dse_audit_log4j_additivity_dataaudit
    }

     $dse_audit_log4j_appender_a = $::cassandra_dse_audit_log4j_appender_a ? {
        undef   => '',
        default => $::cassandra_dse_audit_log4j_appender_a
    }

     $dse_audit_log4j_appender_a_file = $::cassandra_dse_audit_log4j_appender_a_file ? {
        undef   => '',
        default => $::cassandra_dse_audit_log4j_appender_a_file
    }

     $dse_audit_log4j_appender_a_bufferedio = $::cassandra_dse_audit_log4j_appender_a_bufferedio ? {
        undef   => true,
        default => $::cassandra_dse_audit_log4j_appender_a_bufferedio
    }

     $dse_audit_log4j_appender_a_maxfilesize = $::cassandra_dse_audit_log4j_appender_a_maxfilesize ? {
        undef   => '',
        default => $::cassandra_dse_audit_log4j_appender_a_maxfilesize
     }

     $dse_audit_log4j_appender_a_maxbackupindex = $::cassandra_dse_audit_log4j_appender_a_maxbackupindex ? {
        undef   => '',
        default => $::cassandra_dse_audit_log4j_appender_a_maxbackupindex
    }

     $dse_audit_log4j_appender_a_layout = $::cassandra_dse_audit_log4j_appender_a_layout ? {
        undef   => '',
        default => $::cassandra_dse_audit_log4j_appender_a_layout
    }

     $dse_audit_log4j_appender_a_layout_conversionpattern = $::cassandra_dse_audit_log4j_appender_a_layout_conversionpattern ? {
        undef   => '',
        default => $::cassandra_dse_audit_log4j_appender_a_layout_conversionpattern
     }

    $include_repo = $::cassandra_include_repo ? {
        undef   => true,
        default => $::cassandra_include_repo
    }

    $repo_name = $::cassandra_repo_name ? {
        undef   => 'datastax',
        default => $::cassandra_repo_name
    }

    $repo_baseurl = $::cassandra_repo_baseurl ? {
        undef   => $::osfamily ? {
            'Debian' => 'http://debian.datastax.com/community',
            'RedHat' => 'http://rpm.datastax.com/community/',
            default  => undef,
        },
        default => $::cassandra_repo_baseurl
    }

    $repo_gpgkey = $::cassandra_repo_gpgkey ? {
        undef   => $::osfamily ? {
            'Debian' => 'http://debian.datastax.com/debian/repo_key',
            'RedHat' => 'http://rpm.datastax.com/rpm/repo_key',
            default  => undef,
        },
        default => $::cassandra_repo_gpgkey
    }

    $repo_repos = $::cassandra_repo_repos ? {
        undef   => 'main',
        default => $::cassandra_repo_release
    }

    $repo_key_id = $::cassandra_repo_key_id ? {
        undef   => $::osfamily ? {
            'Debian' => 'B999A372',
            default  => undef,
        },
        default => $::cassandra_repo_key_id
    }

    $repo_release = $::cassandra_repo_release ? {
        undef   => 'stable',
        default => $::cassandra_repo_release
    }

    $repo_pin = $::cassandra_repo_pin ? {
        undef   => 200,
        default => $::cassandra_repo_release
    }

    $repo_gpgcheck = $::cassandra_repo_gpgcheck ? {
        undef   => 0,
        default => $::cassandra_repo_gpgcheck
    }

    $repo_enabled = $::cassandra_repo_enabled ? {
        undef   => 1,
        default => $::cassandra_repo_enabled
    }

    case $::osfamily {
        'Debian': {
            $package_name = $::cassandra_package_name ? {
                undef   => 'dsc21',
                default => $::cassandra_package_name,
            }

            $service_name = $::cassandra_service_name ? {
                undef   => 'cassandra',
                default => $::cassandra_service_name,
            }

            $java_package = $::cassandra_java_package ? {
                undef   => 'openjdk-7-jre',
                default => $::cassandra_java_package,
            }

            $dse_config_path = $::cassandra_dse_config_path ? {
                undef   => '/etc/dse',
                default => $::cassandra_dse_config_path,
            }

            $config_path = $::cassandra_config_path ? {
                undef   => '/etc/cassandra',
                default => $::cassandra_config_path,
            }
        }
        'RedHat': {
            $package_name = $::cassandra_package_name ? {
                undef   => 'dsc21',
                default => $::cassandra_package_name,
            }

            $service_name = $::cassandra_service_name ? {
                undef   => 'cassandra',
                default => $::cassandra_service_name,
            }

            $java_package = $::cassandra_java_package ? {
                undef   => 'java-1.7.0-openjdk',
                default => $::cassandra_java_package,
            }

            $dse_config_path = $::dse_cassandra_config_path ? {
                undef   => '/etc/dse',
                default => $::dse_cassandra_config_path,
            }

            $config_path = $::cassandra_config_path ? {
                undef   => '/etc/cassandra/conf',
                default => $::cassandra_config_path,
            }
        }
        default: {
            fail("Unsupported osfamily: ${::osfamily}, operatingsystem: ${::operatingsystem}, module ${module_name} only supports osfamily Debian")
        }
    }

    $version = $::cassandra_version ? {
        undef   => '2.1.2',
        default => $::cassandra_version,
    }

    $opscenter_version = $::cassandra_opscenter_version ? {
        undef   => '5.1.2-1',
        default => $::cassandra_opscenter_version,
    }

    $max_heap_size = $::cassandra_max_heap_size ? {
        undef   => '',
        default => $::cassandra_max_heap_size,
    }

    $heap_newsize = $::cassandra_heap_newsize ? {
        undef   => '',
        default => $::cassandra_heap_newsize,
    }

    $jmx_port = $::cassandra_jmx_port ? {
        undef   => 7199,
        default => $::cassandra_jmx_port,
    }

    $jmx_username = $::cassandra_jmx_username ? {
        undef   => '',
        default => $::cassandra_jmx_username,
    }

    $jmx_password = $::cassandra_jmx_password ? {
        undef   => '',
        default => $::cassandra_jmx_password,
    }

    $additional_jvm_opts = $::cassandra_additional_jvm_opts ? {
        undef   => [],
        default => $::cassandra_additional_jvm_opts,
    }

    $cluster_name = $::cassandra_cluster_name ? {
        undef   => 'Cassandra',
        default => $::cassandra_cluster_name,
    }

    $listen_address = $::cassandra_listen_address ? {
        undef   => $::ipaddress,
        default => $::cassandra_listen_address,
    }

    $broadcast_address = $::cassandra_broadcast_address ? {
        undef   => '',
        default => $::cassandra_broadcast_address,
    }

    $authenticator = $::cassandra_authenticator ? {
        undef   => 'AllowAllAuthenticator',
        default => $::cassandra_authenticator,
    }

    $authorizer = $::cassandra_authorizer ? {
        undef   => 'AllowAllAuthorizer',
        default => $::cassandra_authorizer,
    }

    $rpc_address = $::cassandra_rpc_address ? {
        undef   => '0.0.0.0',
        default => $::cassandra_rpc_address,
    }

    $rpc_port = $::cassandra_rpc_port ? {
        undef   => 9160,
        default => $::cassandra_rpc_port,
    }

    $rpc_server_type = $::cassandra_rpc_server_type ? {
        undef   => 'hsha',
        default => $::cassandra_rpc_server_type,
    }

    $rpc_min_threads = $::cassandra_rpc_min_threads ? {
        undef   => 0,
        default => $::cassandra_rpc_min_threads,
    }

    $rpc_max_threads = $::cassandra_rpc_max_threads ? {
        undef   => 2048,
        default => $::cassandra_rpc_max_threads,
    }

    $storage_port = $::cassandra_storage_port ? {
        undef   => 7000,
        default => $::cassandra_storage_port,
    }

    $partitioner = $::cassandra_partitioner ? {
        undef   => 'org.apache.cassandra.dht.Murmur3Partitioner',
        default => $::cassandra_partitioner,
    }

    $data_file_directories = $::cassandra_data_file_directories ? {
        undef   => ['/var/lib/cassandra/data'],
        default => $::cassandra_data_file_directories,
    }

    $commitlog_directory = $::cassandra_commitlog_directory ? {
        undef   => '/var/lib/cassandra/commitlog',
        default => $::cassandra_commitlog_directory,
    }

    $saved_caches_directory = $::cassandra_saved_caches_directory ? {
        undef   => '/var/lib/cassandra/saved_caches',
        default => $::cassandra_saved_caches_directory,
    }

    $initial_token = $::cassandra_initial_token ? {
        undef   => '',
        default => $::cassandra_initial_token,
    }

    $seeds = $::cassandra_seeds ? {
        undef   => [],
        default => $::cassandra_seeds,
    }

    $default_concurrent_reads = $::processorcount * 8
    $concurrent_reads = $::cassandra_concurrent_reads ? {
        undef   => $default_concurrent_reads,
        default => $::cassandra_concurrent_reads,
    }

    $default_concurrent_writes = $::processorcount * 8
    $concurrent_writes = $::cassandra_concurrent_writes ? {
        undef   => $default_concurrent_writes,
        default => $::cassandra_concurrent_writes,
    }

    $incremental_backups = $::cassandra_incremental_backups ? {
        undef   => 'false',
        default => $::cassandra_incremental_backups,
    }

    $snapshot_before_compaction = $::cassandra_snapshot_before_compaction ? {
        undef   => 'false',
        default => $::cassandra_snapshot_before_compaction,
    }

    $auto_snapshot = $::cassandra_auto_snapshot ? {
        undef   => 'true',
        default => $::cassandra_auto_snapshot,
    }

    $multithreaded_compaction = $::cassandra_multithreaded_compaction ? {
        undef   => 'false',
        default => $::cassandra_multithreaded_compaction,
    }

    $endpoint_snitch = $::cassandra_endpoint_snitch ? {
        undef   => 'SimpleSnitch',
        default => $::cassandra_endpoint_snitch,
    }

    $internode_compression = $::cassandra_internode_compression ? {
        undef   => 'all',
        default => $::cassandra_internode_compression,
    }

    $disk_failure_policy = $::cassandra_disk_failure_policy ? {
        undef   => 'stop',
        default => $::cassandra_disk_failure_policy,
    }

    $start_native_transport = $::cassandra_start_native_transport ? {
        undef   => 'true',
        default => $::cassandra_start_native_transport,
    }

    $native_transport_port = $::cassandra_native_transport_port ? {
        undef   => 9042,
        default => $::cassandra_native_transport_port,
    }

    $start_rpc = $::cassandra_start_rpc ? {
        undef   => 'true',
        default => $::cassandra_start_rpc,
    }

    $num_tokens = $::cassandra_num_tokens ? {
        undef   => 256,
        default => $::cassandra_num_tokens,
    }

    $thread_stack_size = $::cassandra_thread_stack_size ? {
        undef   => 256,
        default => $::cassandra_thread_stack_size,
    }

    $service_enable = $::cassandra_service_enable ? {
        undef   => 'true',
        default => $::cassandra_service_enable,
    }

    $service_ensure = $::cassandra_service_ensure ? {
        undef   => 'running',
        default => $::cassandra_service_ensure,
    }

    $opscenter_service_enable = $::cassandra_opscenter_service_enable ? {
        undef   => 'true',
        default => $::cassandra_opscenter_service_enable,
    }

    $opscenter_service_ensure = $::cassandra_opscenter_service_ensure ? {
        undef   => 'running',
        default => $::cassandra_opscenter_service_ensure,
    }

    $server_encryption_internode= $::cassandra_server_encryption_internode ? {
        undef   => 'none',
        default => $::cassandra_server_encryption_internode,
    }
    $server_encryption_require_auth = $::cassandra_server_encryption_require_auth ? {
        undef   => false,
        default => $::cassandra_server_encryption_require_auth,
    }
    $server_encryption_keystore = $::cassandra_server_encryption_keystore ? {
        undef   => '',
        default => $::cassandra_server_encryption_keystore,
    }
    $server_encryption_keystore_password = $::cassandra_server_encryption_keystore_password ? {
        undef   => '',
        default => $::cassandra_server_encryption_keystore_password,
    }
    $server_encryption_truststore = $::cassandra_server_encryption_truststore ? {
        undef   => '',
        default => $::cassandra_server_encryption_truststore,
    }
    $server_encryption_truststore_password = $::cassandra_server_encryption_truststore_password ? {
        undef   => '',
        default => $::cassandra_server_encryption_truststore_password,
    }
    $server_encryption_cipher_suites = $::cassandra_server_encryption_cipher_suites ? {
        undef   => [],
        default => $::cassandra_server_encryption_cipher_suites,
    }
    $client_encryption_enabled = $::cassandra_client_encryption_enabled ? {
        undef   => false,
        default => $::cassandra_client_encryption_enabled,
    }
    $client_encryption_require_auth = $::cassandra_client_encryption_require_auth ? {
        undef   => false,
        default => $::cassandra_client_encryption_require_auth,
    }
    $client_encryption_keystore = $::cassandra_client_encryption_keystore ? {
        undef   => '',
        default => $::cassandra_client_encryption_keystore,
    }
    $client_encryption_keystore_password = $::cassandra_client_encryption_keystore_password ? {
        undef   => '',
        default => $::cassandra_client_encryption_keystore_password,
    }
    $client_encryption_truststore = $::cassandra_client_encryption_truststore ? {
        undef   => '',
        default => $::cassandra_client_encryption_truststore,
    }
    $client_encryption_truststore_password = $::cassandra_client_encryption_truststore_password ? {
        undef   => '',
        default => $::cassandra_client_encryption_truststore_password,
    }
    $client_encryption_cipher_suites = $::cassandra_client_encryption_cipher_suites ? {
        undef   => [],
        default => $::cassandra_client_encryption_cipher_suites,
    }
    $opscenter_port = $::cassandra_opscenter_port ? {
        undef   => '8888',
        default => $::cassandra_opscenter_port,
    }
    $opscenter_interface = $::cassandra_opscenter_interface ? {
        undef   => '0.0.0.0',
        default => $::cassandra_opscenter_interface,
    }
    $opscenter_ssl_enabled = $::cassandra_opscenter_ssl_enabled ? {
        undef   => false,
        default => $::cassandra_opscenter_ssl_enabled,
    }
    $opscenter_ssl_keyfile = $::cassandra_opscenter_ssl_keyfile ? {
        undef   => '/var/lib/opscenter/ssl/opscenter.key',
        default => $::cassandra_opscenter_ssl_keyfile,
    }
    $opscenter_ssl_certfile = $::cassandra_opscenter_ssl_certfile ? {
        undef   => '/var/lib/opscenter/ssl/opscenter.pem',
        default => $::cassandra_opscenter_ssl_certfile,
    }
    $opscenter_ssl_port = $::cassandra_opscenter_ssl_port ? {
        undef   => '8443',
        default => $::cassandra_opscenter_ssl_port,
    }
    $opscenter_logging_level = $::cassandra_opscenter_logging_level ? {
        undef   => 'INFO',
        default => $::cassandra_opscenter_logging_level,
    }
    $opscenter_authentication_enabled = $::cassandra_opscenter_authentication_enabled ? {
        undef   => 'True',
        default => $::cassandra_opscenter_authentication_enabled,
    }
    $cassandra_username = $::cassandra_cassandra_username ? {
        undef   => '',
        default => $::cassandra_cassandra_username,
    }
    $cassandra_password = $::cassandra_cassandra_password ? {
        undef   => '',
        default => $::cassandra_cassandra_password,
    }
    $cassandra_seed_hosts = $::cassandra_cassandra_seed_hosts ? {
        undef   => '',
        default => $::cassandra_cassandra_seed_hosts,
    }
    $cassandra_api_port = $::cassandra_cassandra_api_port ? {
        undef   => '9160',
        default => $::cassandra_cassandra_api_port,
    }
}
