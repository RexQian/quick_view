#coding: utf-8

require_dependency File.expand_path('../app/helpers/application_helper.rb', __FILE__)
require_dependency File.expand_path('../hooks', __FILE__)

Redmine::Plugin.register :quick_view do
  name 'Quick View plugin'
  author 'Akira Saito'
  description 'This plugin provides ability to view a details of the issue at the issues page.'
  version '0.0.6'

  settings :default => {'issue_tooltip_enabled'=>true,
                        'worktime_ext_enabled'=>true,
                        'worktime_ext_tooltip_enabled'=>true}, 
           :partial => 'quick_view_issues/settings'
end
