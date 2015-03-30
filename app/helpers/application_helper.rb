#coding: utf-8

module ApplicationHelper
  def redmine_version
    Redmine::VERSION::MAJOR * 10 + Redmine::VERSION::MINOR
  end
end

