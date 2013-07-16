#
# Cookbook Name:: capistrano 
# Recipe:: default 
#
# Author:: Ryuzee <ryuzee@gmail.com>
#
# Copyright 2012, Ryutaro YOSHIBA 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in wrhiting, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

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
