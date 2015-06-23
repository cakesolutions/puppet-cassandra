require 'serverspec'

set :backend, :exec

## checking successfull puppet run
describe command('grep fail /var/lib/puppet/state/last_run_summary.yaml |grep -v "fail.*:\ 0”') do
  its(:exit_status) { should eq 1 }
end

describe user('cassandra') do
	it { should exist }
end

describe group('cassandra') do
	it { should exist }
end

describe file('/var/lib/cassandra/data') do
	it { should be_directory }
	it { should be_mode 0644 }
	it { should be_owned_by 'cassandra' }
	it { should be_grouped_into 'cassandra' }
end

describe file('/etc/cassandra/conf/cassandra-env.sh') do
	it { should be_file }
	it { should be_mode 0644 }
	it { should be_owned_by 'cassandra' }
	it { should be_grouped_into 'cassandra' }
	its(:content) { should match /JVM_OPTS="$JVM_OPTS -Dorg.xerial.snappy.tempdir=\/var\/lib\/cassandra\/ -Dcom.sun.management.jmxremote.rmi.port=48888 -Djava.io.tmpdir=\/var\/lib\/cassandra\/ -Dconsistent.rangemovement=false JMX_PORT=7199"/}
end

describe file('/etc/cassandra/conf/cassandra.yaml') do
	it { should be_file }
	it { should be_mode 0644 }
	it { should be_owned_by 'cassandra' }
	it { should be_grouped_into 'cassandra' }
	its(:content) { should match /cluster_name: testCassandra/}
	its(:content) { should match /num_tokens: 256/}
	its(:content) { should match /initial_token:  /}
	its(:content) { should match /authenticator: AllowAllAuthenticator/}
	its(:content) { should match /authorizer: AllowAllAuthorizer/}
	its(:content) { should match /partitioner: org.apache.cassandra.dht.Murmur3Partitioner/}
	its(:content) { should match /- '\/var\/lib\/cassandra\/data'/}
	its(:content) { should match /commitlog_directory: '\/var\/lib\/cassandra\/commitlog'/}
	its(:content) { should match /disk_failure_policy: stop/}
	its(:content) { should match /saved_caches_directory: '\/var\/lib\/cassandra\/saved_caches'/}
	its(:content) { should match /seeds: 1.2.3.4, 5.6.7.8, 9.10.11.12/} # %{::seed_a_eni_ip}, %{::seed_b_eni_ip}, %{::seed_c_eni_ip} ==> 1.2.3.4, 5.6.7.8, 9.10.11.12
	its(:content) { should match /concurrent_reads: 16/} # $::processorcount * 8  ==> 16
	its(:content) { should match /concurrent_writes: 16/} # $::processorcount * 8 ==> 16
	its(:content) { should match /storage_port: 7000/}
	its(:content) { should match /listen_address: 13.14.15.16/} #::ipaddress_eth0  ==> 13.14.15.16
	its(:content) { should match /broadcast_address: 13.14.15.16/} #::ipaddress_eth0 ==> 13.14.15.16
	its(:content) { should match /start_native_transport: true/}
	its(:content) { should match /native_transport_port: 9042/}
	its(:content) { should match /start_rpc: true/}
	its(:content) { should match /rpc_port: 9160/}
	its(:content) { should match /broadcast_rpc_address: 13.14.15.16/} #::ipaddress_eth0 ==> 13.14.15.16
	its(:content) { should match /rpc_server_type: hsha/}
	its(:content) { should match /rpc_min_threads: 0/}
	its(:content) { should match /rpc_max_threads: 2048/}
	its(:content) { should match /incremental_backups: false/}
	its(:content) { should match /snapshot_before_compaction: false/}
	its(:content) { should match /auto_snapshot: true/}
	its(:content) { should match /endpoint_snitch: Ec2Snitch/}
### server_encryption_options:
	its(:content) { should match /internode_encryption: none/}
	its(:content) { should match /keystore:  /}
	its(:content) { should match /keystore_password:  /}
	its(:content) { should match /require_client_auth: false/}
	its(:content) { should match /truststore:  /}
	its(:content) { should match /truststore_password:  /}
	its(:content) { should match /protocol: TLS/}
	its(:content) { should match /algorithm: SunX509/}
	its(:content) { should match /store_type: JKS/}
###client_encryption_options:
	its(:content) { should match /enabled: false/}
	its(:content) { should match /keystore:  /}
	its(:content) { should match /keystore_password:  /}
	its(:content) { should match /require_client_auth: false/}
	its(:content) { should match /protocol: TLS/}
	its(:content) { should match /algorithm: SunX509/}
	its(:content) { should match /store_type: JKS/}
end

describe file('/etc/dse/dse.yaml') do
	it { should be_file }
	it { should be_mode 0644 }
	it { should be_owned_by 'cassandra' }
	it { should be_grouped_into 'cassandra' }
### Audit logging options
	its(:content) { should match /enabled: true/}
	its(:content) { should match /logger: SLF4JAuditWriter/}
	its(:content) { should match /included_categories: ADMIN, AUTH, QUERY/}
	its(:content) { should match /# excluded_categories:/}
	its(:content) { should match /# included_keyspaces:/}
	its(:content) { should match /# excluded_keyspaces:/}
end

describe file('/etc/datastax-agent/datastax-agent-env.sh') do
	it { should be_file }
	it { should be_mode 0644 }
	it { should be_owned_by 'cassandra' }
	it { should be_grouped_into 'cassandra' }
	its(:content) { should match /JVM_OPTS="$JVM_OPTS -Dorg.xerial.snappy.tempdir=\/var\/lib\/datastax-agent\/ -Djava.io.tmpdir=\/var\/lib\/datastax-agent\//}
end

describe file('var/lib/datastax-agent/conf/address.yaml') do
	it { should be_file }
	it { should be_mode 0644 }
	it { should be_owned_by 'cassandra' }
	it { should be_grouped_into 'cassandra' }
	its(:content) { should match /stomp_interface: 17.18.19.20/} #::opscenter_eni_ip ==> 17.18.19.20
end