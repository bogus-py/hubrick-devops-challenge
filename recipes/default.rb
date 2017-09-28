#
# Cookbook Name:: hubrick-devops-challenge
# Recipe:: default
#
# Copyright (C) 2017 Ingo Dyck
#
# All rights reserved - Do Not Redistribute
#
apt_update 'update'
package 'nginx'

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

service 'nginx' do
  action  [:enable, :start]
end
