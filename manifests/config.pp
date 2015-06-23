class cassandra::config(
    $version,
    $config_path,
    $max_heap_size,
    $heap_newsize,
    $jmx_port,
    $jmx_username,
    $jmx_password,
    $additional_jvm_opts,
    $cluster_name,
    $start_native_transport,
    $start_rpc,
    $listen_address,
    $broadcast_address,
    $authenticator,
    $authorizer,
    $rpc_address,
    $broadcast_rpc_address,
    $rpc_port,
    $rpc_server_type,
    $rpc_min_threads,
    $rpc_max_threads,
    $native_transport_port,
    $storage_port,
    $partitioner,
    $data_file_directories,
    $commitlog_directory,
    $saved_caches_directory,
    $initial_token,
    $num_tokens,
    $seeds,
    $concurrent_reads,
    $concurrent_writes,
    $incremental_backups,
    $snapshot_before_compaction,
    $auto_snapshot,
    $multithreaded_compaction,
    $endpoint_snitch,
    $internode_compression,
    $disk_failure_policy,
    $thread_stack_size,
    $server_encryption_internode,
    $server_encryption_require_auth,
    $server_encryption_keystore,
    $server_encryption_keystore_password,
    $server_encryption_truststore,
    $server_encryption_truststore_password,
    $server_encryption_cipher_suites,
    $server_encryption_protocol,
    $server_encryption_algorithm,
    $server_encryption_store_type,
    $client_encryption_enabled,
    $client_encryption_keystore,
    $client_encryption_keystore_password,
    $client_encryption_require_auth,
    $client_encryption_truststore,
    $client_encryption_truststore_password,
    $client_encryption_cipher_suites,
    $client_encryption_protocol,
    $client_encryption_algorithm,
    $client_encryption_store_type,
    $using_dse,
    $dse_config_path,
    $dse_ldap_enabled,
    $dse_ldap_server_host,
    $dse_ldap_server_port,
    $dse_ldap_search_dn,
    $dse_ldap_search_password,
    $dse_ldap_use_ssl,
    $dse_ldap_use_tls,
    $dse_ldap_truststore_in_use,
    $dse_ldap_truststore_path,
    $dse_ldap_truststore_password,
    $dse_ldap_truststore_type,
    $dse_ldap_user_search_base,
    $dse_ldap_user_search_filter,
    $dse_ldap_credentials_validity_in_ms,
    $dse_ldap_search_validity_in_seconds,
    $dse_ldap_connection_pool_max_active,
    $dse_ldap_connection_pool_max_idle,
    $dse_audit_logging_enabled,
    $dse_audit_logger,
    $dse_audit_log4j_logger_dataaudit,
    $dse_audit_log4j_additivity_dataaudit,
    $dse_audit_log4j_appender_a,
    $dse_audit_log4j_appender_a_file,
    $dse_audit_log4j_appender_a_bufferedio,
    $dse_audit_log4j_appender_a_maxfilesize,
    $dse_audit_log4j_appender_a_maxbackupindex,
    $dse_audit_log4j_appender_a_layout,
    $dse_audit_log4j_appender_a_layout_conversionpattern,
    $dse_audit_included_categories,
    $dse_audit_excluded_categories,
    $dse_audit_included_keyspaces,
    $dse_audit_excluded_keyspaces,
    $using_opscenter,
    $opscenter_port,
    $opscenter_interface,
    $opscenter_ssl_enabled,
    $opscenter_ssl_keyfile,
    $opscenter_ssl_certfile,
    $opscenter_ssl_port,
    $opscenter_logging_level,
    $opscenter_authentication_enabled,
    $opscenter_agents_use_ssl,
    $agents_ssl_keystore,
    $agents_ssl_keystore_password,
    $cassandra_username,
    $cassandra_password,
    $cassandra_seed_hosts,
    $cassandra_api_port,
    $cassandra_ssl_ca_certs,
    $cassandra_ssl_client_key,
    $cassandra_ssl_client_pem,
    $storage_cassandra_username,
    $storage_cassandra_password,
    $storage_cassandra_seed_hosts,
    $storage_cassandra_ssl_ca_certs,
    $storage_cassandra_ssl_client_key,
    $storage_cassandra_ssl_client_pem,
    $agent_config_ssl_ca_certs,
    $agent_config_ssl_client_key,
    $agent_config_ssl_client_pem,
    $datastax_agent_additional_jvm_opts,
    $datastax_agent_stomp_interface,
    $datastax_agent_cassandra_conf,
    $datastax_agent_use_ssl,
    $datastax_agent_ssl_keystore,
    $datastax_agent_ssl_keystore_password,
    $datastax_agent_ssl_ca_certs,
    $datastax_agent_ssl_client_key,
    $datastax_agent_ssl_client_pem
) {
    group { 'cassandra':
        ensure  => present,
        require => Class['Cassandra::Install'],
    }

    user { 'cassandra':
        ensure  => present,
        require => Group['cassandra'],
    }

    File {
        owner   => 'cassandra',
        group   => 'cassandra',
        mode    => '0644',
        require => Class['Cassandra::Install'],
    }

    file { $data_file_directories:
        ensure  => directory,
    }

    file { "${config_path}/cassandra-env.sh":
        ensure  => file,
        content => template("${module_name}/cassandra-env${version}.sh.erb"),
    }
    file { "${config_path}/cassandra.yaml":
        ensure  => file,
        content => template("${module_name}/cassandra${version}.yaml.erb"),
    }

    if($using_dse) {

      file { "${dse_config_path}/dse.yaml":
          ensure  => file,
          content => template("${module_name}/dse.yaml.erb"),
      }
 
      file { "/etc/datastax-agent/datastax-agent-env.sh":
          ensure  => file,
          content => template("${module_name}/datastax-agent-env.sh.erb"),
          notify  => Service['datastax-agent'],
      }
  
      file { "/var/lib/datastax-agent/conf/address.yaml":
          ensure  => file,
          content => template("${module_name}/address.yaml.erb"),
          notify  => Service['datastax-agent'],
      }
  }

    if(($dse_audit_logging_enabled) and ($dse_audit_logger=="Log4JAuditWriter")) {
      file { "${dse_config_path}/cassandra/log4j-server.properties":
          ensure  => file,
          content => template("${module_name}/log4j-server.properties.erb"),
      }
    }

    if($using_opscenter) {
      file { "/etc/opscenter/opscenterd.conf":
        ensure  => file,
        owner   => opscenter,
        group   => opscenter,
        content => template("${module_name}/opscenterd.conf.erb"),
      }

      file { "/etc/opscenter/clusters":
          ensure => directory,
          owner   => opscenter,
          group   => opscenter,
     }

      file { "/etc/opscenter/clusters/${cluster_name}.conf":
          ensure  => file,
          owner   => opscenter,
          group   => opscenter,
          content => template("${module_name}/cluster_name.conf.erb"),
      }
    }

}
