#
# Cookbook Name:: first
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

osname=node["platform"]
if osname == "ubuntu"
	package_name = "apache2"
elsif osname == "redhat "
	package_name  = "tomcat8"
elsif osname == "suse"
	package_name  = "tomcat6"
end
package package_name do
	action :install
end
