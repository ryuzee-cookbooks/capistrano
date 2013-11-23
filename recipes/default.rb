#
# Cookbook Name:: capistrano 
# Recipe:: default 
#
# Author:: Ryuzee <ryuzee@gmail.com>
#
# Copyright 2012, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

# version dependency gemfile
gem_package "net-ssh" do
  action :install
  version ">=2.6.5"
end

%w{capistrano capistrano-ext capistrano_colors railsless-deploy}.each do |package_name|
  gem_package package_name do
    action :install
  end
end

# vim: filetype=ruby.chef
