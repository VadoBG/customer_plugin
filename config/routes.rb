RedmineApp::Application.routes.draw do
  match '/projects/:id/customers/:action', :controller => 'customers'
end
