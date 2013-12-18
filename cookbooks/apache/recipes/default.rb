#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# should be able to start service, 

package "apache2" do
	action :install
end
	

# persist on reboot, 

service "apache2" do
	action [:start, :enable]
end



#write default home page,

cookbook_file "/var/www/index.html" do
	source "index.html"
	mode "0644"
	
end
