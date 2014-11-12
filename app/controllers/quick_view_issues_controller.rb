class QuickViewIssuesController < ApplicationController
  #before_filter :find_project, :authorize, :only => [:show]
  before_filter :find_issue, :find_project_from_association, :only => [:show]

  def show
    respond_to do |format|
      #render 'hooks/quick_view_issue_dialog', :project => @project, :issue => other_issue 
      logger.debug ' *** format='+format.inspect
      lookup_context.view_paths do |path|
         logger.debug ' *** lookup='+path.to_s
      end
      logger.debug ' *** issue='+@issue.inspect
      format.html { render :template => 'quick_view_issues/quick_view_issue_dialog', :layout => false, :project => @project, :issue => @issue  }
    end
  end

private
  def find_project
    logger.info "project_id => #{params[:project_id]}"
    @issue = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def find_issue
    logger.info "issue_id => #{params[:id]}"
    @issue = @object = Issue.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def find_relation
    @relation = IssueRelation.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

end
