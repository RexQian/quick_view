class QuickViewWorktimeIssuesController < ApplicationController
  before_filter :find_issue, :find_project_from_association, :only => [:show]

  def show
    respond_to do |format|
      format.html {
        render :template => 'quick_view_worktime_issues/quick_view_worktime_tooltip',
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
