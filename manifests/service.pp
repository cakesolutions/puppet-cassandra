class cassandra::service(
  $service_enable,
  $service_ensure,
  $opscenter_service_enable,
  $opscenter_service_ensure
) {
    service { $cassandra::service_name:
        ensure     => $service_ensure,
        enable     => $service_enable,
        hasstatus  => true,
        hasrestart => true,
        subscribe  => Class['cassandra::config'],
        require    => Class['cassandra::config'],
    }

    if($using_opscenter) {
      service { 'opscenterd':
        ensure     => $opscenter_service_ensure,
        enable     => $opscenter_service_enable,
        hasstatus  => true,
        hasrestart => true,
        subscribe  => Class['cassandra::config'],
        require    => Class['cassandra::config'],
      }
    }

}
