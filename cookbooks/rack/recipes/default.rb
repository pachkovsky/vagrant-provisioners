template '/vagrant/config/database.yml' do
	source 'database.yml'
	owner  'vagrant'
	group  'vagrant'
	action :create
end

gem_package 'bundler' do
	action :install
end

execute 'bundle install' do
	cwd '/vagrant'
	command 'bundle install'
end

execute 'rake db:create' do
	cwd '/vagrant'
	command 'bundle exec rake db:create'
end

execute 'rake db:migrate' do
	cwd '/vagrant'
	command 'bundle exec rake db:migrate'
end