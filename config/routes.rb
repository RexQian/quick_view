# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
RedmineApp::Application.routes.draw do

  resources :quick_view_issues, :controller => 'quick_view_issues', :only => [:index,:show]
  resources :issues do
    shallow do
      #resources :quick_view_issues, :controller => 'quick_view_issues', :only => [:index,:show]
    end
  end
end

