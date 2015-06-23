require 'serverspec'

set :backend, :exec

## checking successfull puppet run
describe command('grep fail /var/lib/puppet/state/last_run_summary.yaml |grep -v "fail.*:\ 0”') do
  its(:exit_status) { should eq 1 }
end

## java_package is defined twice in params.pp of puppet-cassandra module with two different values,
## seems like java-1.7.0-openjdk is the correct default value not openjdk-7-jre
describe package('java-1.7.0-openjdk') do
	it { should be_installed.by('rpm') }
end

describe package('dse') do
	it { should be_installed}.by('rpm').with_version('4.7.0-1') }
end

describe package('python26-cql') do
	it { should be_installed.by('rpm') }
end
