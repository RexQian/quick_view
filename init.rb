#coding: utf-8

require_dependency File.expand_path('../app/helpers/application_helper.rb', __FILE__)
require_dependency File.expand_path('../hooks', __FILE__)

Redmine::Plugin.register :quick_view do
  name 'Quick View plugin'
  author 'Akira Saito'
  description 'This is a plugin for Redmine'
  version '0.0.1'
end
