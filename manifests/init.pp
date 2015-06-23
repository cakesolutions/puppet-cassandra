class cassandra(
    $package_name                                         = $cassandra::params::package_name,
    $version                                              = $cassandra::params::version,
    $service_name                                         = $cassandra::params::service_name,
    $config_path                                          = $cassandra::params::config_path,
    $include_repo                                         = $cassandra::params::include_repo,
    $repo_name                                            = $cassandra::params::repo_name,
    $repo_baseurl                                         = $cassandra::params::repo_baseurl,
    $repo_gpgkey                                          = $cassandra::params::repo_gpgkey,
    $repo_repos                                           = $cassandra::params::repo_repos,
    $repo_key_id                                          = $cassandra::params::repo_key_id,
    $repo_release                                         = $cassandra::params::repo_release,
    $repo_pin                                             = $cassandra::params::repo_pin,
    $repo_gpgcheck                                        = $cassandra::params::repo_gpgcheck,
    $repo_enabled                                         = $cassandra::params::repo_enabled,
    $max_heap_size                                        = $cassandra::params::max_heap_size,
    $heap_newsize                                         = $cassandra::params::heap_newsize,
    $jmx_port                                             = $cassandra::params::jmx_port,
    $jmx_username                                         = $cassandra::params::jmx_username,
    $jmx_password                                         = $cassandra::params::jmx_password,
    $additional_jvm_opts                                  = $cassandra::params::additional_jvm_opts,
    $cluster_name                                         = $cassandra::params::cluster_name,
    $listen_address                                       = $cassandra::params::listen_address,
    $broadcast_address                                    = $cassandra::params::broadcast_address,
    $authenticator                                        = $cassandra::params::authenticator,
    $authorizer                                           = $cassandra::params::authorizer,
    $start_native_transport                               = $cassandra::params::start_native_transport,
    $start_rpc                                            = $cassandra::params::start_rpc,
    $rpc_address                                          = $cassandra::params::rpc_address,
    $broadcast_rpc_address                                = $cassandra::params::broadcast_rpc_address,
    $rpc_port                                             = $cassandra::params::rpc_port,
    $rpc_server_type                                      = $cassandra::params::rpc_server_type,
    $rpc_min_threads                                      = $cassandra::params::rpc_min_threads,
    $rpc_max_threads                                      = $cassandra::params::rpc_max_threads,
    $native_transport_port                                = $cassandra::params::native_transport_port,
    $storage_port                                         = $cassandra::params::storage_port,
    $partitioner                                          = $cassandra::params::partitioner,
    $data_file_directories                                = $cassandra::params::data_file_directories,
    $commitlog_directory                                  = $cassandra::params::commitlog_directory,
    $saved_caches_directory                               = $cassandra::params::saved_caches_directory,
    $initial_token                                        = $cassandra::params::initial_token,
    $num_tokens                                           = $cassandra::params::num_tokens,
    $seeds                                                = $cassandra::params::seeds,
    $concurrent_reads                                     = $cassandra::params::concurrent_reads,
    $concurrent_writes                                    = $cassandra::params::concurrent_writes,
    $incremental_backups                                  = $cassandra::params::incremental_backups,
    $snapshot_before_compaction                           = $cassandra::params::snapshot_before_compaction,
    $auto_snapshot                                        = $cassandra::params::auto_snapshot,
    $multithreaded_compaction                             = $cassandra::params::multithreaded_compaction,
    $endpoint_snitch                                      = $cassandra::params::endpoint_snitch,
    $internode_compression                                = $cassandra::params::internode_compression,
    $disk_failure_policy                                  = $cassandra::params::disk_failure_policy,
    $thread_stack_size                                    = $cassandra::params::thread_stack_size,
    $service_enable                                       = $cassandra::params::service_enable,
    $service_ensure                                       = $cassandra::params::service_ensure,
    $server_encryption_internode                          = $cassandra::params::server_encryption_internode,
    $server_encryption_require_auth                       = $cassandra::params::server_encryption_require_auth,
    $server_encryption_keystore                           = $cassandra::params::server_encryption_keystore,
    $server_encryption_keystore_password                  = $cassandra::params::server_encryption_keystore_password,
    $server_encryption_truststore                         = $cassandra::params::server_encryption_truststore,
    $server_encryption_truststore_password                = $cassandra::params::server_encryption_truststore_password,
    $server_encryption_cipher_suites                      = $cassandra::params::server_encryption_cipher_suites,
    $server_encryption_protocol                           = $cassandra::params::server_encryption_protocol,
    $server_encryption_algorithm                          = $cassandra::params::server_encryption_algorithm,
    $server_encryption_store_type                         = $cassandra::params::server_encryption_store_type,
    $client_encryption_enabled                            = $cassandra::params::client_encryption_enabled,
    $client_encryption_require_auth                       = $cassandra::params::client_encryption_require_auth,
    $client_encryption_keystore                           = $cassandra::params::client_encryption_keystore,
    $client_encryption_keystore_password                  = $cassandra::params::client_encryption_keystore_password,
    $client_encryption_truststore                         = $cassandra::params::client_encryption_truststore,
    $client_encryption_truststore_password                = $cassandra::params::client_encryption_truststore_password,
    $client_encryption_cipher_suites                      = $cassandra::params::client_encryption_cipher_suites,
    $client_encryption_protocol                           = $cassandra::params::client_encryption_protocol,
    $client_encryption_algorithm                          = $cassandra::params::client_encryption_algorithm,
    $client_encryption_store_type                         = $cassandra::params::client_encryption_store_type,
    $using_dse                                            = $cassandra::params::using_dse,
    $dse_config_path                                      = $cassandra::params::dse_config_path,
    $dse_ldap_enabled                                     = $cassandra::params::dse_ldap_enabled,
    $dse_ldap_server_host                                 = $cassandra::params::dse_ldap_server_host,
    $dse_ldap_server_port                                 = $cassandra::params::dse_ldap_server_port,
    $dse_ldap_search_dn                                   = $cassandra::params::dse_ldap_search_dn,
    $dse_ldap_search_password                             = $cassandra::params::dse_ldap_search_password,
    $dse_ldap_use_ssl                                     = $cassandra::params::dse_ldap_use_ssl,
    $dse_ldap_use_tls                                     = $cassandra::params::dse_ldap_use_tls,
    $dse_ldap_truststore_in_use                           = $cassandra::params::dse_ldap_truststore_in_use,
    $dse_ldap_truststore_path                             = $cassandra::params::dse_ldap_truststore_path,
    $dse_ldap_truststore_password                         = $cassandra::params::dse_ldap_truststore_password,
    $dse_ldap_truststore_type                             = $cassandra::params::dse_ldap_truststore_type,
    $dse_ldap_user_search_base                            = $cassandra::params::dse_ldap_user_search_base,
    $dse_ldap_user_search_filter                          = $cassandra::params::dse_ldap_user_search_filter,
    $dse_ldap_credentials_validity_in_ms                  = $cassandra::params::dse_ldap_credentials_validity_in_ms,
    $dse_ldap_search_validity_in_seconds                  = $cassandra::params::dse_ldap_search_validity_in_seconds,
    $dse_ldap_connection_pool_max_active                  = $cassandra::params::dse_ldap_connection_pool_max_active,
    $dse_ldap_connection_pool_max_idle                    = $cassandra::params::dse_ldap_connection_pool_max_idle,
    $dse_audit_logging_enabled                            = $cassandra::params::dse_audit_logging_enabled,
    $dse_audit_logger                                     = $cassandra::params::dse_audit_logger,
    $dse_audit_log4j_logger_dataaudit                     = $cassandra::params::log4j_logger_dataaudit,
    $dse_audit_log4j_additivity_dataaudit                 = $cassandra::params::dse_audit_log4j_additivity_dataaudit,
    $dse_audit_log4j_appender_a                           = $cassandra::params::dse_audit_log4j_appender_a,
    $dse_audit_log4j_appender_a_file                      = $cassandra::params::dse_audit_log4j_appender_a_file,
    $dse_audit_log4j_appender_a_bufferedio                = $cassandra::params::dse_audit_log4j_appender_a_bufferedio,
    $dse_audit_log4j_appender_a_maxfilesize               = $cassandra::params::dse_audit_log4j_appender_a_maxfilesize,
    $dse_audit_log4j_appender_a_maxbackupindex            = $cassandra::params::dse_audit_log4j_appender_a_maxbackupindex,
    $dse_audit_log4j_appender_a_layout                    = $cassandra::params::dse_audit_log4j_appender_a_layout,
    $dse_audit_log4j_appender_a_layout_conversionpattern  = $cassandra::params::dse_audit_log4j_appender_a_layout_conversionpattern,
    $dse_audit_included_categories                        = $cassandra::params::dse_audit_included_categories,
    $dse_audit_excluded_categories                        = $cassandra::params::dse_audit_excluded_categories,
    $dse_audit_included_keyspaces                         = $cassandra::params::dse_audit_included_keyspaces,
    $dse_audit_excluded_keyspaces                         = $cassandra::params::dse_audit_excluded_keyspaces,
    $using_opscenter                                      = $cassandra::params::using_opscenter,
    $opscenter_service_enable                             = $cassandra::params::opscenter_service_enable,
    $opscenter_service_ensure                             = $cassandra::params::opscenter_service_ensure,
    $opscenter_version                                    = $cassandra::params::opscenter_version,
    $opscenter_port                                       = $cassandra::params::opscenter_port,
    $opscenter_interface                                  = $cassandra::params::opscenter_interface,
    $opscenter_ssl_enabled                                = $cassandra::params::opscenter_ssl_enabled,
    $opscenter_ssl_keyfile                                = $cassandra::params::opscenter_ssl_keyfile,
    $opscenter_ssl_certfile                               = $cassandra::params::opscenter_ssl_certfile,
    $opscenter_ssl_port                                   = $cassandra::params::opscenter_ssl_port,
    $opscenter_logging_level                              = $cassandra::params::opscenter_logging_level,
    $opscenter_authentication_enabled                     = $cassandra::params::opscenter_authentication_enabled,
    $opscenter_agents_use_ssl                             = $cassandra::params::opscenter_agents_use_ssl,
    $agents_ssl_keystore                                  = $cassandra::params::agents_ssl_keystore,
    $agents_ssl_keystore_password                         = $cassandra::params::agents_ssl_keystore_password,
    $cassandra_username                                   = $cassandra::params::cassandra_username,
    $cassandra_password                                   = $cassandra::params::cassandra_password,
    $cassandra_seed_hosts                                 = $cassandra::params::cassandra_seed_hosts,
    $cassandra_api_port                                   = $cassandra::params::cassandra_api_port,
    $cassandra_ssl_ca_certs                               = $cassandra::params::cassandra_ssl_ca_certs,
    $cassandra_ssl_client_key                             = $cassandra::params::cassandra_ssl_client_key,
    $cassandra_ssl_client_pem                             = $cassandra::params::cassandra_ssl_client_pem,
    $storage_cassandra_username                           = $cassandra::params::storage_cassandra_username,
    $storage_cassandra_password                           = $cassandra::params::storage_cassandra_password,
    $storage_cassandra_seed_hosts                         = $cassandra::params::storage_cassandra_seed_hosts,
    $storage_cassandra_ssl_ca_certs                       = $cassandra::params::storage_cassandra_ssl_ca_certs,
    $storage_cassandra_ssl_client_key                     = $cassandra::params::storage_cassandra_ssl_client_key,
    $storage_cassandra_ssl_client_pem                     = $cassandra::params::storage_cassandra_ssl_client_pem,
    $agent_config_ssl_ca_certs                            = $cassandra::params::agent_config_ssl_ca_certs,
    $agent_config_ssl_client_key                          = $cassandra::params::agent_config_ssl_client_key,
    $agent_config_ssl_client_pem                          = $cassandra::params::agent_config_ssl_client_pem,
    $datastax_agent_additional_jvm_opts                   = $cassandra::params::datastax_agent_additional_jvm_opts,
    $datastax_agent_stomp_interface                       = $cassandra::params::datastax_agent_stomp_interface,
    $datastax_agent_cassandra_conf                        = $cassandra::params::datastax_agent_cassandra_conf,
    $datastax_agent_use_ssl                               = $cassandra::params::datastax_agent_use_ssl,
    $datastax_agent_ssl_keystore                          = $cassandra::params::datastax_agent_ssl_keystore,
    $datastax_agent_ssl_keystore_password                 = $cassandra::params::datastax_agent_ssl_keystore_password,
    $datastax_agent_ssl_ca_certs                          = $cassandra::params::datastax_agent_ssl_ca_certs,
    $datastax_agent_ssl_client_key                        = $cassandra::params::datastax_agent_ssl_client_key,
    $datastax_agent_ssl_client_pem                        = $cassandra::params::datastax_agent_ssl_client_pem
) inherits cassandra::params {
    # Validate input parameters
    validate_bool($include_repo)
    validate_absolute_path($commitlog_directory)
    validate_absolute_path($saved_caches_directory)

    validate_string($cluster_name)
    validate_string($partitioner)
    validate_string($initial_token)
    validate_string($endpoint_snitch)

    validate_re($version, '\d*\.\d*\.\d*', 'The version should be x.y.z')
    validate_re($opscenter_version, '\d*\.\d*\.\d*', 'The version should be x.y.z')
    validate_re($start_rpc, '^(true|false)$')
    validate_re($start_native_transport, '^(true|false)$')
    validate_re($rpc_server_type, '^(hsha|sync|async)$')
    validate_re($incremental_backups, '^(true|false)$')
    validate_re($snapshot_before_compaction, '^(true|false)$')
    validate_re($auto_snapshot, '^(true|false)$')
    validate_re($multithreaded_compaction, '^(true|false)$')
    validate_re("${concurrent_reads}", '^[0-9]+$')
    validate_re("${concurrent_writes}", '^[0-9]+$')
    validate_re("${num_tokens}", '^[0-9]+$')
    validate_re($internode_compression, '^(all|dc|none)$')
    validate_re($disk_failure_policy, '^(stop|best_effort|ignore)$')
    validate_re("${thread_stack_size}", '^[0-9]+$')
    validate_re($service_enable, '^(true|false)$')
    validate_re($service_ensure, '^(running|stopped)$')

    validate_array($additional_jvm_opts)
    validate_array($seeds)
    validate_array($data_file_directories)

    validate_re($server_encryption_internode, '^all|none|dc|rack$')
    validate_string($server_encryption_keystore)
    validate_string($server_encryption_keystore_password)
    validate_string($server_encryption_truststore)
    validate_string($server_encryption_truststore_password)
    validate_array($server_encryption_cipher_suites)
    validate_string($server_encryption_protocol)
    validate_string($server_encryption_algorithm)
    validate_string($server_encryption_store_type)

    validate_bool($client_encryption_enabled)
    validate_bool($client_encryption_require_auth)
    validate_string($client_encryption_keystore)
    validate_string($client_encryption_keystore_password)
    validate_string($client_encryption_truststore)
    validate_string($client_encryption_truststore_password)
    validate_array($client_encryption_cipher_suites)
    validate_string($client_encryption_protocol)
    validate_string($client_encryption_algorithm)
    validate_string($client_encryption_store_type)
    validate_bool($using_dse)
    validate_bool($using_opscenter)
    validate_bool($dse_ldap_enabled)

    validate_string($jmx_username)
    validate_string($jmx_password)
    validate_string($cassandra_username)
    validate_string($cassandra_password)


    validate_string($cassandra_seed_hosts)
    if(!is_integer($cassandra_api_port)) {
        fail('cassandra_api_port must be a port number between 1 and 65535')
    }
    validate_string($cassandra_ssl_ca_certs)
    validate_string($cassandra_ssl_client_key)
    validate_string($cassandra_ssl_client_pem)

    validate_string($storage_cassandra_username)
    validate_string($storage_cassandra_password)
    validate_string($storage_cassandra_seed_hosts)
    validate_string($storage_cassandra_ssl_ca_certs)
    validate_string($storage_cassandra_ssl_client_key)
    validate_string($storage_cassandra_ssl_client_pem)

    validate_string($agent_config_ssl_ca_certs)
    validate_string($agent_config_ssl_client_key)
    validate_string($agent_config_ssl_client_pem)

    validate_array($datastax_agent_additional_jvm_opts)
    if(!is_ip_address($datastax_agent_stomp_interface)) {
        fail('datastax_agent_stomp_interface must be an IP address')
    }
    validate_string($datastax_agent_cassandra_conf)
    validate_re($datastax_agent_use_ssl, '^(0|1)$')
    validate_string($datastax_agent_ssl_keystore)
    validate_string($datastax_agent_ssl_keystore_password)
    validate_string($datastax_agent_ssl_ca_certs)
    validate_string($datastax_agent_ssl_client_key)
    validate_string($datastax_agent_ssl_client_pem)

    if($dse_ldap_enabled) {
        #Validate the LDAP parameters when $dse_ldap_enabled is true
        validate_string($dse_ldap_server_host)
        if(!is_integer($dse_ldap_server_port)) {
            fail('server_port must be a port number between 1 and 65535')
        }
        validate_string($dse_ldap_search_dn)
        validate_string($dse_ldap_search_password)
        validate_bool($dse_ldap_use_ssl)
        validate_bool($dse_ldap_use_tls)
        validate_bool($dse_ldap_truststore_in_use)
        if($dse_ldap_truststore_in_use) {
            validate_string($dse_ldap_truststore_path)
            validate_string($dse_ldap_truststore_password)
            validate_string($dse_ldap_truststore_type)
        }
        validate_string($dse_ldap_user_search_base)
        validate_string($dse_ldap_user_search_filter)
        if(!is_integer($dse_ldap_credentials_validity_in_ms)) {
                fail('dse_ldap_credentials_validity_in_ms must be an integer higher or equal to 0')
            }
        if(!is_integer($dse_ldap_search_validity_in_seconds)) {
                fail('dse_ldap_search_validity_in_seconds must be an integer higher or equal to 0')
            }
        if(!is_integer($dse_ldap_connection_pool_max_active)) {
                fail('dse_ldap_connection_pool_max_active must be an integer')
            }
        if(!is_integer($dse_ldap_connection_pool_max_idle)) {
                fail('dse_ldap_connection_pool_max_idle must be an integer')
            }
    }

    validate_bool($dse_audit_logging_enabled)
    if($dse_audit_logging_enabled) {
        validate_string($dse_audit_logger)
    
        if($dse_audit_logger == 'Log4JAuditWriter'){
            validate_string($dse_audit_log4j_logger_dataaudit)
            validate_bool($dse_audit_log4j_additivity_dataaudit)
            validate_string($dse_audit_log4j_appender_a)
            validate_string($dse_audit_log4j_appender_a_file)
            validate_bool($dse_audit_log4j_appender_a_bufferedio)
            validate_string($dse_audit_log4j_appender_a_maxfilesize)
            if(!is_integer($dse_audit_log4j_appender_a_maxbackupindex)) {
                fail('dse_audit_log4j_appender_a_maxbackupindex must be an integer')
            }
            validate_string($dse_audit_log4j_appender_a_layout)
            validate_string($dse_audit_log4j_appender_a_layout_conversionpattern)
        }
        validate_string($dse_audit_included_categories)
        validate_string($dse_audit_excluded_categories)
        validate_string($dse_audit_included_keyspaces)
        validate_string($dse_audit_excluded_keyspaces) 
    }


    if(!is_integer($jmx_port)) {
        fail('jmx_port must be a port number between 1 and 65535')
    }

    if(!is_ip_address($listen_address)) {
        fail('listen_address must be an IP address')
    }

    validate_bool($opscenter_ssl_enabled)
    if($opscenter_ssl_enabled) {
        if(!is_integer($opscenter_ssl_port)) {
            fail('opscenter_ssl_port must be a port number between 1 and 65535')
        }
    }
    if(!is_integer($opscenter_port)) {
        fail('opscenter_port must be a port number between 1 and 65535')
    }
    if(!is_ip_address($opscenter_interface)) {
        fail('opscenter_interface must be an IP address')
    }
    validate_re($opscenter_service_enable, '^(true|false)$')
    validate_re($opscenter_service_ensure, '^(running|stopped)$')
    validate_re($opscenter_logging_level, '^(TRACE|DEBUG|INFO|WARN|ERROR)$')
    validate_re($opscenter_authentication_enabled, '^(True|False)$')
    validate_re($opscenter_agents_use_ssl, '^(True|False)$')

    if(!empty($broadcast_address) and !is_ip_address($broadcast_address)) {
        fail('broadcast_address must be an IP address')
    }

    if(!is_ip_address($rpc_address)) {
        fail('rpc_address must be an IP address')
    }

    if(!is_ip_address($broadcast_rpc_address)) {
        fail('broadcast_rpc_address must be an IP address')
    }

    if(!is_integer($rpc_port)) {
        fail('rpc_port must be a port number between 1 and 65535')
    }

    if(!is_integer($native_transport_port)) {
        fail('native_transport_port must be a port number between 1 and 65535')
    }

    if(!is_integer($storage_port)) {
        fail('storage_port must be a port number between 1 and 65535')
    }

    if(!is_integer($rpc_min_threads)) {
        fail('rpc_min_threads must be a nonnegative integer')
    }

    if(!is_integer($rpc_max_threads)) {
        fail('rpc_max_threads must be a nonnegative integer')
    }

    if(empty($seeds)) {
        fail('seeds must not be empty')
    }

    if(empty($data_file_directories)) {
        fail('data_file_directories must not be empty')
    }

    if(!empty($initial_token)) {
        notice("Starting with Cassandra 1.2 you shouldn't set an initial_token but set num_tokens accordingly.")
    }

    # Anchors for containing the implementation class
    anchor { 'cassandra::begin': }

    if($include_repo) {
        class { 'cassandra::repo':
            repo_name => $repo_name,
            baseurl   => $repo_baseurl,
            key_id    => $repo_key_id,
            gpgkey    => $repo_gpgkey,
            repos     => $repo_repos,
            release   => $repo_release,
            pin       => $repo_pin,
            gpgcheck  => $repo_gpgcheck,
            enabled   => $repo_enabled,
        }
        Class['cassandra::repo'] -> Class['cassandra::install']
    }

    class { 'cassandra::install':
        java_package    => $java_package,
        using_opscenter => $using_opscenter,
    }

    $version_config = $cassandra::version ? {
      default   =>  regsubst($cassandra::version, '^(\d\.\d+).*$', '\1'),
      /^1/      =>  regsubst($cassandra::version, '\..*$', ''),
    }

    class { 'cassandra::config':
        version                                             => $version_config,
        config_path                                         => $config_path,
        max_heap_size                                       => $max_heap_size,
        heap_newsize                                        => $heap_newsize,
        jmx_port                                            => $jmx_port,
        jmx_username                                        => $jmx_username,
        jmx_password                                        => $jmx_password,
        additional_jvm_opts                                 => $additional_jvm_opts,
        cluster_name                                        => $cluster_name,
        start_native_transport                              => $start_native_transport,
        start_rpc                                           => $start_rpc,
        listen_address                                      => $listen_address,
        broadcast_address                                   => $broadcast_address,
        authenticator                                       => $authenticator,
        authorizer                                          => $authorizer,
        rpc_address                                         => $rpc_address,
        broadcast_rpc_address                               => $broadcast_rpc_address,
        rpc_port                                            => $rpc_port,
        rpc_server_type                                     => $rpc_server_type,
        rpc_min_threads                                     => $rpc_min_threads,
        rpc_max_threads                                     => $rpc_max_threads,
        native_transport_port                               => $native_transport_port,
        storage_port                                        => $storage_port,
        partitioner                                         => $partitioner,
        data_file_directories                               => $data_file_directories,
        commitlog_directory                                 => $commitlog_directory,
        saved_caches_directory                              => $saved_caches_directory,
        initial_token                                       => $initial_token,
        num_tokens                                          => $num_tokens,
        seeds                                               => $seeds,
        concurrent_reads                                    => $concurrent_reads,
        concurrent_writes                                   => $concurrent_writes,
        incremental_backups                                 => $incremental_backups,
        snapshot_before_compaction                          => $snapshot_before_compaction,
        auto_snapshot                                       => $auto_snapshot,
        multithreaded_compaction                            => $multithreaded_compaction,
        endpoint_snitch                                     => $endpoint_snitch,
        internode_compression                               => $internode_compression,
        disk_failure_policy                                 => $disk_failure_policy,
        thread_stack_size                                   => $thread_stack_size,
        server_encryption_internode                         => $server_encryption_internode,
        server_encryption_require_auth                      => $server_encryption_require_auth,
        server_encryption_keystore                          => $server_encryption_keystore,
        server_encryption_keystore_password                 => $server_encryption_keystore_password,
        server_encryption_truststore                        => $server_encryption_truststore,
        server_encryption_truststore_password               => $server_encryption_truststore_password,
        server_encryption_cipher_suites                     => $server_encryption_cipher_suites,
        server_encryption_protocol                          => $server_encryption_protocol,
        server_encryption_algorithm                         => $server_encryption_algorithm,
        server_encryption_store_type                        => $server_encryption_store_type,
        client_encryption_enabled                           => $client_encryption_enabled,
        client_encryption_keystore                          => $client_encryption_keystore,
        client_encryption_keystore_password                 => $client_encryption_keystore_password,
        client_encryption_require_auth                      => $client_encryption_require_auth,
        client_encryption_truststore                        => $client_encryption_truststore,
        client_encryption_truststore_password               => $client_encryption_truststore_password,
        client_encryption_cipher_suites                     => $client_encryption_cipher_suites,
        client_encryption_protocol                          => $client_encryption_protocol,
        client_encryption_algorithm                         => $client_encryption_algorithm,
        client_encryption_store_type                        => $client_encryption_store_type,
        using_dse                                           => $using_dse,
        dse_config_path                                     => $dse_config_path,
        dse_ldap_enabled                                    => $dse_ldap_enabled,
        dse_ldap_server_host                                => $dse_ldap_server_host,
        dse_ldap_server_port                                => $dse_ldap_server_port,
        dse_ldap_search_dn                                  => $dse_ldap_search_dn,
        dse_ldap_search_password                            => $dse_ldap_search_password,
        dse_ldap_use_ssl                                    => $dse_ldap_use_ssl,
        dse_ldap_use_tls                                    => $dse_ldap_use_tls,
        dse_ldap_truststore_in_use                          => $dse_ldap_truststore_in_use,
        dse_ldap_truststore_path                            => $dse_ldap_truststore_path,
        dse_ldap_truststore_password                        => $dse_ldap_truststore_password,
        dse_ldap_truststore_type                            => $dse_ldap_truststore_type,
        dse_ldap_user_search_base                           => $dse_ldap_user_search_base,
        dse_ldap_user_search_filter                         => $dse_ldap_user_search_filter,
        dse_ldap_credentials_validity_in_ms                 => $dse_ldap_credentials_validity_in_ms,
        dse_ldap_search_validity_in_seconds                 => $dse_ldap_search_validity_in_seconds,
        dse_ldap_connection_pool_max_active                 => $dse_ldap_connection_pool_max_active,
        dse_ldap_connection_pool_max_idle                   => $dse_ldap_connection_pool_max_idle,
        dse_audit_logging_enabled                           => $dse_audit_logging_enabled,
        dse_audit_logger                                    => $dse_audit_logger,
        dse_audit_log4j_logger_dataaudit                    => $log4j_logger_dataaudit,
        dse_audit_log4j_additivity_dataaudit                => $dse_audit_log4j_additivity_dataaudit,
        dse_audit_log4j_appender_a                          => $dse_audit_log4j_appender_a,
        dse_audit_log4j_appender_a_file                     => $dse_audit_log4j_appender_a_file,
        dse_audit_log4j_appender_a_bufferedio               => $dse_audit_log4j_appender_a_bufferedio,
        dse_audit_log4j_appender_a_maxfilesize              => $dse_audit_log4j_appender_a_maxfilesize,
        dse_audit_log4j_appender_a_maxbackupindex           => $dse_audit_log4j_appender_a_maxbackupindex,
        dse_audit_log4j_appender_a_layout                   => $dse_audit_log4j_appender_a_layout,
        dse_audit_log4j_appender_a_layout_conversionpattern => $dse_audit_log4j_appender_a_layout_conversionpattern,
        dse_audit_included_categories                       => $dse_audit_included_categories,
        dse_audit_excluded_categories                       => $dse_audit_excluded_categories,
        dse_audit_included_keyspaces                        => $dse_audit_included_keyspaces,
        dse_audit_excluded_keyspaces                        => $dse_audit_excluded_keyspaces,
        using_opscenter                                     => $using_opscenter,
        opscenter_port                                      => $opscenter_port,
        opscenter_interface                                 => $opscenter_interface,
        opscenter_ssl_enabled                               => $opscenter_ssl_enabled,
        opscenter_ssl_keyfile                               => $opscenter_ssl_keyfile,
        opscenter_ssl_certfile                              => $opscenter_ssl_certfile,
        opscenter_ssl_port                                  => $opscenter_ssl_port,
        opscenter_logging_level                             => $opscenter_logging_level,
        opscenter_authentication_enabled                    => $opscenter_authentication_enabled,
        opscenter_agents_use_ssl                            => $opscenter_agents_use_ssl,
        agents_ssl_keystore                                 => $agents_ssl_keystore,
        agents_ssl_keystore_password                        => $agents_ssl_keystore_password,
        cassandra_username                                  => $cassandra_username,
        cassandra_password                                  => $cassandra_password,
        cassandra_seed_hosts                                => $cassandra_seed_hosts,
        cassandra_api_port                                  => $cassandra_api_port,
        cassandra_ssl_ca_certs                              => $cassandra_ssl_ca_certs,
        cassandra_ssl_client_key                            => $cassandra_ssl_client_key,
        cassandra_ssl_client_pem                            => $cassandra_ssl_client_pem,
        storage_cassandra_username                          => $storage_cassandra_username,
        storage_cassandra_password                          => $storage_cassandra_password,
        storage_cassandra_seed_hosts                        => $storage_cassandra_seed_hosts,
        storage_cassandra_ssl_ca_certs                      => $storage_cassandra_ssl_ca_certs,
        storage_cassandra_ssl_client_key                    => $storage_cassandra_ssl_client_key,
        storage_cassandra_ssl_client_pem                    => $storage_cassandra_ssl_client_pem,
        agent_config_ssl_ca_certs                           => $agent_config_ssl_ca_certs,
        agent_config_ssl_client_key                         => $agent_config_ssl_client_key,
        agent_config_ssl_client_pem                         => $agent_config_ssl_client_pem,
        datastax_agent_stomp_interface                      => $datastax_agent_stomp_interface,
        datastax_agent_additional_jvm_opts                  => $datastax_agent_additional_jvm_opts,
        datastax_agent_cassandra_conf                       => $datastax_agent_cassandra_conf,
        datastax_agent_use_ssl                              => $datastax_agent_use_ssl,
        datastax_agent_ssl_keystore                         => $datastax_agent_ssl_keystore,
        datastax_agent_ssl_keystore_password                => $datastax_agent_ssl_keystore_password,
        datastax_agent_ssl_ca_certs                         => $datastax_agent_ssl_ca_certs,
        datastax_agent_ssl_client_key                       => $datastax_agent_ssl_client_key,
        datastax_agent_ssl_client_pem                       => $datastax_agent_ssl_client_pem
    }

    class { 'cassandra::service':
        service_enable           => $service_enable,
        service_ensure           => $service_ensure,
        using_opscenter          => $using_opscenter,
        opscenter_service_enable => $opscenter_service_enable,
        opscenter_service_ensure => $opscenter_service_ensure,
    }

    anchor { 'cassandra::end': }

    Anchor['cassandra::begin'] -> Class['cassandra::install'] -> Class['cassandra::config'] ~> Class['cassandra::service'] -> Anchor['cassandra::end']
}
