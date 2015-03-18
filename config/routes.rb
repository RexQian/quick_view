# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
RedmineApp::Application.routes.draw do

  resources :quick_view_issues, :controller => 'quick_view_issues', :only => [:show]
  resources :quick_view_worktime_issues, :controller => 'quick_view_worktime_issues', :only => [:show]
  resources :issues do
    shallow do
    end
  end
end

