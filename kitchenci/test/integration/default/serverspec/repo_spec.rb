require 'serverspec'

set :backend, :exec

## checking successfull puppet run
describe command('grep fail /var/lib/puppet/state/last_run_summary.yaml |grep -v "fail.*:\ 0”') do
  its(:exit_status) { should eq 1 }
end

## check Cassandra repo
describe yumrepo('datastax') do
	it { should exist }
	it { should be_enabled }
end

#TODO: add matches for the rest of repo file content
describe file('/etc/yum.repo.d/datastax.repo') do
	it { should be_file }
	its(:content) { should match /baseurl=http:\/\/auto_cakesolutions.net:T4MAbMsNBvtlSKu@rpm.datastax.com\/enterprise/ }
	its(:content) { should match /gpgcheck=0/ }	
end