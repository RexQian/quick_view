#coding: utf-8

class QuickViewIssuesController < ApplicationController
  before_filter :find_issue, :find_project_from_association, :only => [:show, :portray]

  def show
    @relations = @issue.relations.select {|r| r.other_issue(@issue) && r.other_issue(@issue).visible? }
    @relation = IssueRelation.new

    respond_to do |format|
      format.html {
        render :template => 'quick_view_issues/quick_view_issue_dialog',
               :layout => false,
               :issue => @issue
      }
    end
  end

  def portray
    respond_to do |format|
      format.html {
        render :template => 'quick_view_issues/quick_view_portrait',
               :layout => false,
               :issue => @issue
      }
    end
  end

private
  def find_issue
    logger.info "issue_id => #{params[:id]}"
    @issue = @object = Issue.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end
end
