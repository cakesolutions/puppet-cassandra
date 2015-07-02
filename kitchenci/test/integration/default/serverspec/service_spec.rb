require 'serverspec'

set :backend, :exec

## checking successfull puppet run
describe command('grep fail /var/lib/puppet/state/last_run_summary.yaml |grep -v "fail.*:\ 0”') do
  its(:exit_status) { should eq 1 }
end

describe service('dse') do
	it { should be_enabled }
	it { should be_running }
end

describe service('datastax-agent') do
	it { should be_enabled }
	it { should be_running }
end