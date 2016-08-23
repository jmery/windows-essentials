#
# Cookbook Name:: workstation
# Recipe:: disable_uac
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

system_policies = 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System'

registry_key system_policies do
  values [{
    :name => 'EnableLUA',
    :type => :dword,
    :data => 0
  }]
end

registry_key system_policies do
  values [{
    :name => 'ConsentPromptBehaviorAdmin',
    :type => :dword,
    :data => 0
  }]
end
